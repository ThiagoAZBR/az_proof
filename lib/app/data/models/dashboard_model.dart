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

    if (ordersTotal != null) {
      result.addAll({'orders_total': ordersTotal});
    }
    if (ordersCount != null) {
      result.addAll({'orders_count': ordersCount});
    }
    if (salesTotal != null) {
      result.addAll({'sales_total': salesTotal});
    }
    if (salesCount != null) {
      result.addAll({'sales_count': salesCount});
    }
    if (averageTicket != null) {
      result.addAll({'average_ticket': averageTicket});
    }
    if (orders != null) {
      result.addAll({'orders': orders!.map((x) => x?.toMap()).toList()});
    }
    if (hasMore != null) {
      result.addAll({'has_more': hasMore});
    }
    if (limit != null) {
      result.addAll({'limit': limit});
    }
    if (totalPages != null) {
      result.addAll({'total_pages': totalPages});
    }
    if (page != null) {
      result.addAll({'page': page});
    }
    if (total != null) {
      result.addAll({'total': total});
    }

    return result;
  }

  factory DashboardModel.fromMap(Map<String, dynamic> map) {
    return DashboardModel(
      ordersTotal: map['orders_total']?.toDouble(),
      ordersCount: map['orders_tount']?.toInt(),
      salesTotal: map['sales_total']?.toDouble(),
      salesCount: map['sales_tount']?.toInt(),
      averageTicket: map['average_ticket']?.toDouble(),
      orders: map['orders'] != null
          ? List<Order>.from(map['orders']?.map((x) => Order.fromMap(x)))
          : null,
      hasMore: map['has_more'],
      limit: map['limit']?.toInt(),
      totalPages: map['total_pages']?.toInt(),
      page: map['page']?.toInt(),
      total: map['total']?.toInt(),
    );
  }
}
