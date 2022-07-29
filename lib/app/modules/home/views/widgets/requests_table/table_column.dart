import 'package:az_proof/app/shared/app_colors.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TableColumn extends StatelessWidget {
  final String _title;
  final List<String> _dataList;
  final Color _titleBackground;
  final Color _dataListBackground;
  final int _index;
  final int _tableLength;
  const TableColumn({
    Key? key,
    required String title,
    required List<String> dataList,
    required Color titleBackground,
    required Color dataListBackground,
    required int index,
    required int tableLength,
  })  : _title = title,
        _dataList = dataList,
        _titleBackground = titleBackground,
        _dataListBackground = dataListBackground,
        _index = index,
        _tableLength = tableLength,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 58,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: _titleBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(_index == 0 ? 8.0 : 0.0),
                topRight:
                    Radius.circular(_index == _tableLength - 1 ? 8.0 : 0.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 8,
                bottom: 8,
              ),
              child: Text(
                _title,
                style: AppTextStyles.nunitoMedium(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          for (var i = 0; i < 3; i++)
            Container(
              color: _dataListBackground,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      top: 19,
                      bottom: 19,
                    ),
                    child: Text(
                      _dataList[i],
                    ),
                  ),
                  Visibility(
                    visible: i < 2,
                    child: Divider(
                      color: AppColors.dividerColor,
                      thickness: 1,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
