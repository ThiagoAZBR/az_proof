import 'package:az_proof/app/data/models/dashboard_model.dart';
import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/modules/home/controllers/home_states.dart';
import 'package:az_proof/app/modules/home/views/widgets/card_details.dart';
import 'package:az_proof/app/shared/app_text_styles.dart';
import 'package:az_proof/app/shared/app_urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class ActivitySummary extends StatelessWidget {
  final HomeController _controller;
  const ActivitySummary({
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
                    icon: returnImage(i),
                    title:
                        '${returnCount(i, _controller.dashboardModel)}${returnTitle(i)}',
                    body: 'R\$: ${returnTotal(i, _controller.dashboardModel)}',
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}

String returnImage(int index) {
  String _image = '';
  switch (index) {
    case 0:
      _image = AppUrls.REQUESTS_ICON;
      break;
    case 1:
      _image = AppUrls.SELLS_ICON;
      break;
    case 2:
      _image = AppUrls.TICKETS_ICON;
      break;
    default:
  }
  return _image;
}

String returnTitle(int index) {
  if (index == 0) {
    return 'Pedidos';
  } else if (index == 1) {
    return 'Vendas';
  }
  return 'Ticket médio';
}

String returnTotal(int index, DashboardModel dashboardModel) {
  final brazillianFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
  if (index == 0) {
    return '${brazillianFormat.format(dashboardModel.ordersTotal!)}';
  } else if (index == 1) {
    return '${brazillianFormat.format(dashboardModel.salesTotal!)}';
  }
  return '${brazillianFormat.format(dashboardModel.averageTicket!)}';
}

String returnCount(int index, DashboardModel dashboardModel) {
  if (index == 0) {
    return '${dashboardModel.ordersCount!} ';
  } else if (index == 1) {
    return '${dashboardModel.salesCount!} ';
  }
  return '';
}
