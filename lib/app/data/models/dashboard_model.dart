import 'package:az_proof/app/data/models/order_model.dart';

class Welcome {
    Welcome({
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
}
