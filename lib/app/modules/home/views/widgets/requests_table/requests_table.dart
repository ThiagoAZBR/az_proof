import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:az_proof/app/data/models/order_product_model.dart';
import 'package:az_proof/app/modules/home/controllers/dashboard_controller.dart';
import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/modules/home/views/widgets/requests_table/table_column.dart';
import 'package:az_proof/app/shared/app_colors.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RequestsTable extends StatelessWidget {
  final HomeController _controller;
  final DashboardController _dashboardController;
  const RequestsTable({
    Key? key,
    required HomeController controller,
    required DashboardController dashboardController,
  })  : _controller = controller,
        _dashboardController = dashboardController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Pedidos',
          style: AppTextStyles.nunitoBig(),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                child: Container(
                  height: 58,
                  width: double.maxFinite,
                  color: AppColors.darkRed,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  for (var i = 0; i < 9; i++)
                    Expanded(
                      flex: returnFlex(i),
                      child: TableColumn(
                        controller: _controller,
                        title: _dashboardController.returnTitle(i),
                        dataList: _dashboardController.returnDatashboardInfo(
                            i, _controller),
                        titleBackground:
                            i % 2 == 0 ? AppColors.lightRed : AppColors.darkRed,
                        dataListBackground:
                            i % 2 == 0 ? AppColors.white : AppColors.lightGrey,
                        index: i,
                        tableLength: 9,
                      ),
                    ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

int returnFlex(int index) {
  if (index == 0 || index == 1 || index == 3 || index == 4) {
    return 2;
  }
  return 1;
}
