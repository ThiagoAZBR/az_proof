import 'package:az_proof/app/data/models/customer_model.dart';
import 'package:az_proof/app/data/models/invoice_model.dart';
import 'package:az_proof/app/data/models/order_product_model.dart';
import 'package:az_proof/app/data/models/partner_model.dart';
import 'package:az_proof/app/data/models/payment_model.dart';
import 'package:az_proof/app/data/models/refund_model.dart';
import 'package:az_proof/app/data/models/replacement_product_model.dart';

import 'package:az_proof/app/data/models/coupon_model.dart';
import 'package:az_proof/app/data/models/delivery_model.dart';

class Order {
    Order({
        this.customer,
        this.seller,
        this.payment,
        this.delivery,
        this.products,
        this.id,
        this.coupon,
        this.invoices,
        this.orderSellerId,
        this.status,
        this.partner,
        this.createdAt,
        this.updatedAt,
        this.userId,
        this.refund,
        this.replacementProduct,
        this.v,
    });

    final Customer? customer;
    final Partner? seller;
    final Payment? payment;
    final Delivery? delivery;
    final List<OrderProduct>? products;
    final String? id;
    final Coupon? coupon;
    final List<Invoice>? invoices;
    final String? orderSellerId;
    final String? status;
    final Partner? partner;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final String? userId;
    final Refund? refund;
    final ReplacementProduct? replacementProduct;
    final int? v;
}