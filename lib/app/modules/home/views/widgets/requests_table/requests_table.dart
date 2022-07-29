import 'package:az_proof/app/modules/home/views/widgets/requests_table/table_column.dart';
import 'package:az_proof/app/shared/app_colors.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RequestsTable extends StatelessWidget {
  const RequestsTable({Key? key}) : super(key: key);

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
                children: <Widget>[
                  for (var i = 0; i < 7; i++)
                    Expanded(
                      child: TableColumn(
                        title: 'ID da Loja',
                        dataList: [
                          '11111',
                          '22222',
                          '33333',
                        ],
                        titleBackground:
                            i % 2 == 0 ? AppColors.lightRed : AppColors.darkRed,
                        dataListBackground:
                            i % 2 == 0 ? AppColors.white : AppColors.lightGrey,
                        index: i,
                        tableLength: 7,
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
