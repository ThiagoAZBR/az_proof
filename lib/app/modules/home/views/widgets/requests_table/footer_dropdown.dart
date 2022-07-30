import 'package:az_proof/app/shared/app_colors.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FooterDropdown extends StatefulWidget {
  const FooterDropdown({Key? key}) : super(key: key);

  @override
  State<FooterDropdown> createState() => _FooterDropdownState();
}

class _FooterDropdownState extends State<FooterDropdown> {
  String _value = '07';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Linhas por página',
          style: AppTextStyles.nunitoMedium(color: AppColors.grey),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          width: 87,
          height: 32,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 8,
            ),
            child: DropdownButton<String>(
              items: <String>['05', '06', '07', '08', '09', '10', '15', '20']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (item) {
                setState(() {
                  _value = item!;
                });
              },
              value: _value,
              isExpanded: true,
              underline: Container(color: Colors.transparent),
              style: AppTextStyles.nunitoSmall(color: AppColors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
