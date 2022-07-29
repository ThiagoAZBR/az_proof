import 'package:az_proof/app/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AppTextStyles {
  static TextStyle nunitoBig({
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.darkGrey,
  }) =>
      TextStyle(
        fontFamily: 'NunitoSans',
        color: color,
        fontSize: 19,
        fontWeight: fontWeight,
      );

  static TextStyle nunitoMedium({
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.darkGrey,
  }) =>
      TextStyle(
        fontFamily: 'NunitoSans',
        color: color,
        fontSize: 14,
        fontWeight: fontWeight,
      );
      
  static TextStyle nunitoSmall({
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.darkGrey,
  }) =>
      TextStyle(
        fontFamily: 'NunitoSans',
        color: color,
        fontSize: 12,
        fontWeight: fontWeight,
      );
}
