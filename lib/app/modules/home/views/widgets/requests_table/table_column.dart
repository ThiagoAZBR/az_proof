import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/shared/app_colors.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class TableColumn extends StatefulWidget {
  final HomeController _controller;
  final String _title;
  final List<String> _dataList;
  final Color _titleBackground;
  final Color _dataListBackground;
  final int _index;
  final int _tableLength;
  const TableColumn({
    Key? key,
    required HomeController controller,
    required String title,
    required List<String> dataList,
    required Color titleBackground,
    required Color dataListBackground,
    required int index,
    required int tableLength,
  })  : _controller = controller,
        _title = title,
        _dataList = dataList,
        _titleBackground = titleBackground,
        _dataListBackground = dataListBackground,
        _index = index,
        _tableLength = tableLength,
        super(key: key);

  @override
  State<TableColumn> createState() => _TableColumnState();
}

class _TableColumnState extends State<TableColumn> {
  bool isOnHover = false;
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
              color: widget._titleBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(widget._index == 0 ? 8.0 : 0.0),
                topRight: Radius.circular(
                    widget._index == widget._tableLength - 1 ? 8.0 : 0.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 8,
                bottom: 8,
              ),
              child: Text(
                widget._title,
                style: AppTextStyles.nunitoMedium(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          for (var i = 0; i < widget._controller.maxRowsForPage; i++)
            Container(
              color: widget._dataListBackground,
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
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                              ClipboardData(text: widget._dataList[i]));

                          ;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'O conteúdo foi copiado para a área de transferência!',
                                style: AppTextStyles.nunitoMedium(
                                  color: AppColors.white,
                                ),
                              ),
                              duration: const Duration(milliseconds: 1000),
                              backgroundColor: AppColors.darkRed,
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 30,
                                bottom: 20,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          widget._dataList[i],
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
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
