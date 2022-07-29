import 'package:az_proof/app/modules/home/views/widgets/requests_table/footer_dropdown.dart';
import 'package:az_proof/app/shared/app_colors.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TableFooter extends StatelessWidget {
  const TableFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dividerColor,
      height: 48,
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.keyboard_double_arrow_left_rounded,
                  color: AppColors.darkRed,
                  size: 16,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.darkRed,
                  size: 16,
                ),
                for (var i = 0; i < 6; i++)
                  Visibility(
                    visible: i != 0,
                    child: Container(
                      child: Text(
                        '$i',
                        style: AppTextStyles.nunitoMedium(
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                  ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.darkRed,
                  size: 16,
                ),
                Icon(
                  Icons.keyboard_double_arrow_right_rounded,
                  color: AppColors.darkRed,
                  size: 16,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '1 de 10 páginas',
                  style: AppTextStyles.nunitoMedium(color: AppColors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
