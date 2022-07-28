import 'package:az_proof/app/modules/home/views/widgets/requests_table/table_column.dart';
import 'package:az_proof/app/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RequestsTable extends StatelessWidget {
  const RequestsTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('Pedidos'),
        Row(
          children: <Widget>[
            for (var i = 0; i < 3; i++)
              TableColumn(
                title: 'ID da Loja',
                dataList: ['11111', '22222', '33333'],
                titleBackground: i % 2 == 0 ? AppColors.lightRed : AppColors.darkRed,
                dataListBackground: i % 2 == 0 ? AppColors.white : AppColors.lightGrey,
              ),
          ],
        )
      ],
    );
  }
}
