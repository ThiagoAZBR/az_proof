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
  String _value = '1';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: <Widget>[
          Text(
            'Linhas por página',
            style: AppTextStyles.nunitoMedium(color: AppColors.grey),
          ),
          Container(
            child: DropdownButton<String>(
              items: [
                DropdownMenuItem(
                  child: Text('1'),
                ),
                DropdownMenuItem(
                  child: Text('2'),
                ),
                DropdownMenuItem(
                  child: Text('3'),
                ),
              ],
              onChanged: (item) {
                setState(() {
                    _value = item!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
