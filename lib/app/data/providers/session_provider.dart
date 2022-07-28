import 'dart:convert';
import 'package:az_proof/app/shared/errors.dart';
import 'package:dio/dio.dart';
import '../models/user_model.dart';

class SessionProvider {
  final request = Dio();

  final opt = Options(
    followRedirects: false,
    validateStatus: (status) {
      return status! < 500;
    },
    headers: {'Content-Type': 'application/json'},
  );

  final baseUrl = 'http://150.230.64.79:9393/proof';

  Future<UserModel> signInProvider(String email, String password) async {
    final response = await request.post(
      '$baseUrl/session',
      data: jsonEncode(
        {
          "email": email,
          "password": password,
        },
      ),
      options: opt,
    );

    return handleResponse(response);
  }
}

UserModel handleResponse(Response response) {
  if (response.statusCode == 200) {
    return UserModel.fromJson(response.data);
  } else {
    throw NotFoundException(message: response.data['message']);
  }

}
