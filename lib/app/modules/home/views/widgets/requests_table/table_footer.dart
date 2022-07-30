import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/modules/home/views/widgets/requests_table/footer_dropdown.dart';
import 'package:az_proof/app/shared/app_colors.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TableFooter extends StatefulWidget {
  final HomeController _controller;
  const TableFooter({
    Key? key,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  State<TableFooter> createState() => _TableFooterState();
}

class _TableFooterState extends State<TableFooter> {
  int selectedPage = 1;
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
                for (var i = 0;
                    i <
                        widget._controller.dashboardModel.total! ~/
                                widget._controller.maxRowsForPage +
                            1;
                    i++)
                  Visibility(
                    visible: i != 0,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedPage = i;
                        });
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: selectedPage == i
                              ? BoxDecoration(
                                  color: AppColors.darkRed,
                                  borderRadius: BorderRadius.circular(100))
                              : null,
                          child: Center(
                            child: Text(
                              '$i',
                              style: AppTextStyles.nunitoMedium(
                                color: selectedPage == i
                                    ? AppColors.white
                                    : AppColors.grey,
                              ),
                            ),
                          ),
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
                FooterDropdown(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
