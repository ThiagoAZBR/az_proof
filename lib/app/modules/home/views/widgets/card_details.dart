import 'package:az_proof/app/shared/app_colors.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardDetails extends StatelessWidget {
  final String _icon;
  final String _title;
  final String _body;
  const CardDetails({
    Key? key,
    required String icon,
    required String title,
    required String body,
  })  : _icon = icon,
        _title = title,
        _body = body,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 174,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            top: 24,
            bottom: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(_icon),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _title,
                    style: AppTextStyles.nunitoBig(
                      color: AppColors.darkGrey,
                    ),
                  ),
                  Text(
                    _body,
                    style: AppTextStyles.nunitoBig(
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkGrey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
