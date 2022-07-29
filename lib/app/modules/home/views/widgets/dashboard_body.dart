import 'package:az_proof/app/modules/home/views/widgets/activity_summary.dart';
import 'package:az_proof/app/modules/home/views/widgets/requests_table/requests_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ActivitySummary(),
          RequestsTable(),
        ],
      ),
    );
  }
}
