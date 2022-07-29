import 'package:az_proof/app/modules/home/views/widgets/card_details.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActivitySummary extends StatelessWidget {
  const ActivitySummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Resumo da atividade',
            style: AppTextStyles.nunitoBig(),
          ),

          const SizedBox(height: 24),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              for (var i = 0; i < 3; i++)
                Expanded(
                  child: CardDetails(
                    icon: Icons.favorite,
                    title: 'Status',
                    body: 'R\$: 50.000,00',
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
