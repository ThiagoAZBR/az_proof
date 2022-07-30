import 'package:az_proof/app/data/models/order_product_model.dart';
import 'package:az_proof/app/modules/home/controllers/home_controller.dart';
import 'package:az_proof/app/shared/string_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';

class DashboardController {
  String returnTitle(int index) {
    String _title = '';
    switch (index) {
      case 0:
        _title = 'ID do Pedido';
        break;
      case 1:
        _title = 'ID na Loja';
        break;
      case 2:
        _title = 'Criação';
        break;
      case 3:
        _title = 'Nome do cliente';
        break;
      case 4:
        _title = 'CPF/CNPJ do cliente';
        break;
      case 5:
        _title = 'Status do pedido';
        break;
      case 6:
        _title = 'Status do pagamento';
        break;
      case 7:
        _title = 'Método de pagamento';
        break;
      case 8:
        _title = 'Total';
        break;
      default:
    }
    return _title;
  }

  List<String> returnDatashboardInfo(int index, HomeController homeController) {
    switch (index) {
      case 0:
        return _returnOrderId(index, homeController);
      case 1:
        return _returnSellerId(index, homeController);
      case 2:
        return _returnCreation(index, homeController);
      case 3:
        return _returnCustomerName(index, homeController);
      case 4:
        return _returnCustomerDocs(index, homeController);
      case 5:
        return _returnOrderStatus(index, homeController);
      case 6:
        return _returnPaymentStatus(index, homeController);
      case 7:
        return _returnPaymentType(index, homeController);
      default:
        return _returnTotal(index, homeController);
    }
  }

  List<String> _returnOrderId(int index, HomeController controller,) {
    int _counter = 0;
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      for (OrderProduct _product
          in controller.dashboardModel.orders![index].products!) {
        _dataList.add(_product.id!);
      }
      _counter++;
    }
    return _dataList;
  }

  List<String> _returnSellerId(int index, HomeController controller,) {
    int _counter = 0;
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      for (OrderProduct _product
          in controller.dashboardModel.orders![index].products!) {
            if (_product.productSellerId != null) {

        _dataList.add(_product.productSellerId!);
            } 
            _dataList.add(controller.dashboardModel.orders![index].orderSellerId!);
      }
      _counter++;
    }
    return _dataList;
  }

  List<String> _returnCreation(int index, HomeController controller,) {
    int _counter = 0;
    final newFormat = DateFormat.yMd();
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      _dataList.add(newFormat
          .format(controller.dashboardModel.orders![index].createdAt!));
      _counter++;
    }
    return _dataList;
  }

  List<String> _returnCustomerName(int index, HomeController controller,) {
    int _counter = 0;
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      for (OrderProduct _product
          in controller.dashboardModel.orders![index].products!) {
        _dataList.add(controller.dashboardModel.orders![index].customer!.name!);
      }
      _counter++;
    }
    return _dataList;
  }

  List<String> _returnCustomerDocs(int index, HomeController controller,) {
    int _counter = 0;
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      for (OrderProduct _product
          in controller.dashboardModel.orders![index].products!) {
        _dataList.add(controller.dashboardModel.orders![index].customer!.doc!);
      }
      _counter++;
    }
    return _dataList;
  }

  List<String> _returnOrderStatus(int index, HomeController controller,) {
    int _counter = 0;
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      for (OrderProduct _product
          in controller.dashboardModel.orders![index].products!) {
        _dataList.add(returnStatus(_product.status!));
      }
      _counter++;
    }
    return _dataList;
  }

  List<String> _returnPaymentStatus(int index, HomeController controller,) {
    int _counter = 0;
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      for (OrderProduct _product
          in controller.dashboardModel.orders![index].products!) {
        _dataList.add(returnStatus(
            controller.dashboardModel.orders![index].payment!.status!));
      }
      _counter++;
    }
    return _dataList;
  }

  List<String> _returnPaymentType(int index, HomeController controller,) {
    int _counter = 0;
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      for (OrderProduct _product
          in controller.dashboardModel.orders![index].products!) {
        _dataList
            .add(returnPaymentType(controller.dashboardModel.orders![index].payment!.method!));
      }
      _counter++;
    }
    return _dataList;
  }

  List<String> _returnTotal(int index, HomeController controller,) {
    int _counter = 0;
    List<String> _dataList = [];
    while (_counter < controller.maxRowsForPage) {
      for (OrderProduct _product
          in controller.dashboardModel.orders![index].products!) {
        _dataList.add(
          NumberFormat.simpleCurrency(locale: 'pt_BR').format(
              controller.dashboardModel.orders![index].payment!.amount!),
        );
      }
      _counter++;
    }
    return _dataList;
  }

  String returnStatus(String status) {
    if (status == StringConstants.SUCCEED_STATUS) {
      return 'Aprovado';
    } else if (status == StringConstants.PENDING_STATUS) {
      return 'Pendente';
    } else if (status == StringConstants.PAID_STATUS) {
      return 'Aprovado';
    }
    return 'Cancelado';
  }

  String returnPaymentType(String status) {
    if (status == StringConstants.CREDIT_STATUS) {
      return 'Crédito';
    } else if (status == StringConstants.PIX_STATUS || status == StringConstants.PIX_STATUS.toUpperCase()) {
      return 'Pix';
    } else if (status == StringConstants.BOLETO_STATUS) {
      return 'Boleto';
    }
    return 'Crédito';
  }
}
