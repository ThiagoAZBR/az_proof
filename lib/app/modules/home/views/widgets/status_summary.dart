import 'package:az_proof/app/modules/home/views/widgets/card_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatusSummary extends StatelessWidget {
  const StatusSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            for (var i = 0; i < 3; i++)
              CardDetails(
                icon: Icons.favorite,
                title: 'Status',
                body: 'R\$: 50.000,00',
              ),
          ],
        )
      ],
    );
  }
}
