import 'dart:convert';

import 'package:az_proof/app/data/models/order_model.dart';

class DashboardModel {
  DashboardModel({
    this.ordersTotal,
    this.ordersCount,
    this.salesTotal,
    this.salesCount,
    this.averageTicket,
    this.orders,
    this.hasMore,
    this.limit,
    this.totalPages,
    this.page,
    this.total,
  });

  final double? ordersTotal;
  final int? ordersCount;
  final double? salesTotal;
  final int? salesCount;
  final double? averageTicket;
  final List<Order>? orders;
  final bool? hasMore;
  final int? limit;
  final int? totalPages;
  final int? page;
  final int? total;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(ordersTotal != null){
      result.addAll({'ordersTotal': ordersTotal});
    }
    if(ordersCount != null){
      result.addAll({'ordersCount': ordersCount});
    }
    if(salesTotal != null){
      result.addAll({'salesTotal': salesTotal});
    }
    if(salesCount != null){
      result.addAll({'salesCount': salesCount});
    }
    if(averageTicket != null){
      result.addAll({'averageTicket': averageTicket});
    }
    if(orders != null){
      result.addAll({'orders': orders!.map((x) => x?.toMap()).toList()});
    }
    if(hasMore != null){
      result.addAll({'hasMore': hasMore});
    }
    if(limit != null){
      result.addAll({'limit': limit});
    }
    if(totalPages != null){
      result.addAll({'totalPages': totalPages});
    }
    if(page != null){
      result.addAll({'page': page});
    }
    if(total != null){
      result.addAll({'total': total});
    }
  
    return result;
  }

  factory DashboardModel.fromMap(Map<String, dynamic> map) {
    return DashboardModel(
      ordersTotal: map['ordersTotal']?.toDouble(),
      ordersCount: map['ordersCount']?.toInt(),
      salesTotal: map['salesTotal']?.toDouble(),
      salesCount: map['salesCount']?.toInt(),
      averageTicket: map['averageTicket']?.toDouble(),
      orders: map['orders'] != null ? List<Order>.from(map['orders']?.map((x) => Order.fromMap(x))) : null,
      hasMore: map['hasMore'],
      limit: map['limit']?.toInt(),
      totalPages: map['totalPages']?.toInt(),
      page: map['page']?.toInt(),
      total: map['total']?.toInt(),
    );
  }

}
