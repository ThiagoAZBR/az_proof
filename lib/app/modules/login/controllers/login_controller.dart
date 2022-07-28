import 'package:az_proof/app/data/models/user_model.dart';
import 'package:az_proof/app/data/preferences/user_preferences.dart';
import 'package:az_proof/app/data/providers/session_provider.dart';
import 'package:az_proof/app/domain/usecases/sign_in_use_case.dart';
import 'package:az_proof/app/shared/errors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  SignInUseCase signInUseCase;

  LoginController(this.signInUseCase);

  final _errorMessage = 'Ops, ocorreu um erro. Tente novamente'.obs;
  String get error => _errorMessage.value;
  set error(String error) => _errorMessage.value = error;

  final _loading = false.obs;
  bool get loading => _loading.value;
  void set loading(bool value) => _loading.value = value;

  final _showPassword = true.obs;
  bool get showPassword => _showPassword.value;
  void set showPassword(bool value) => _showPassword.value = value;

  final _checkPasswordError = false.obs;
  bool get checkPasswordError => _checkPasswordError.value;
  void set checkPasswordError(bool value) => _checkPasswordError.value = value;

  final _checkEmailError = false.obs;
  bool get checkEmailError => _checkEmailError.value;
  void set checkEmailError(bool value) => _checkEmailError.value = value;

  final _formKey = GlobalKey<FormState>().obs;
  GlobalKey<FormState> get formKey => _formKey.value;

  final _emailController = TextEditingController().obs;
  TextEditingController get emailController => _emailController.value;

  final _passwordController = TextEditingController().obs;
  TextEditingController get passwordController => _passwordController.value;

  final _emailFocus = FocusNode().obs;
  FocusNode get emailFocus => _emailFocus.value;
  void setFocusOnEmail() {
    _passwordFocus.value.unfocus();
    _emailFocus.value.requestFocus();
  }

  final _passwordFocus = FocusNode().obs;
  FocusNode get passwordFocus => _passwordFocus.value;
  void setFocusOnPassword() {
    _emailFocus.value.unfocus();
    _passwordFocus.value.requestFocus();
  }

  String? validatePassword(String value) {
    if (value.trim().isEmpty) {
      _checkPasswordError.value = true;
      return 'Por favor, informe senha.';
    } else {
      _checkPasswordError.value = false;
      return null;
    }
  }

  String? validateEmail(String value) {
    if (value.trim().isEmpty) {
      _checkEmailError.value = true;
      return 'Por favor, informe o email.';
    } else {
      _checkEmailError.value = false;
      return null;
    }
  }

  Future<UserModel?> signInController(String email, String password) async {
    final prefs = UserPreferences();

    UserModel? _userModel;

    final result = await signInUseCase(email: email.trim(), password: password);

    result.fold(
      (failure) => error =
          failure is NotFoundException ? failure.message : failure.toString(),
      (success) async {
        _userModel = success;
      },
    );
    if (_userModel != null) {
      await prefs.deleteUser();
      await prefs.setUser(_userModel!);
    }

    return _userModel;
  }
}
