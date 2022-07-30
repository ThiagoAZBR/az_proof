import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/modules/home/views/widgets/activity_summary.dart';
import 'package:az_proof/app/modules/home/views/widgets/requests_table/requests_table.dart';
import 'package:az_proof/app/modules/home/views/widgets/requests_table/table_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardBody extends StatelessWidget {
  final HomeController _controller;
  const DashboardBody({
    Key? key,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ActivitySummary(
            controller: _controller,
          ),
          const SizedBox(height: 32),
          RequestsTable(
            controller: _controller,
          ),
          TableFooter(
            controller: _controller,
          ),
        ],
      ),
    );
  }
}
