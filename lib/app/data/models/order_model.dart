import 'dart:convert';

import 'package:az_proof/app/data/models/coupon_model.dart';
import 'package:az_proof/app/data/models/customer_model.dart';
import 'package:az_proof/app/data/models/delivery_model.dart';
import 'package:az_proof/app/data/models/invoice_model.dart';
import 'package:az_proof/app/data/models/order_product_model.dart';
import 'package:az_proof/app/data/models/partner_model.dart';
import 'package:az_proof/app/data/models/payment_model.dart';
import 'package:az_proof/app/data/models/refund_model.dart';
import 'package:az_proof/app/data/models/replacement_product_model.dart';

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

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(customer != null){
      result.addAll({'customer': customer!.toMap()});
    }
    if(seller != null){
      result.addAll({'seller': seller!.toMap()});
    }
    if(payment != null){
      result.addAll({'payment': payment!.toMap()});
    }
    if(delivery != null){
      result.addAll({'delivery': delivery!.toMap()});
    }
    if(products != null){
      result.addAll({'products': products!.map((x) => x?.toMap()).toList()});
    }
    if(id != null){
      result.addAll({'id': id});
    }
    if(coupon != null){
      result.addAll({'coupon': coupon!.toMap()});
    }
    if(invoices != null){
      result.addAll({'invoices': invoices!.map((x) => x?.toMap()).toList()});
    }
    if(orderSellerId != null){
      result.addAll({'orderSellerId': orderSellerId});
    }
    if(status != null){
      result.addAll({'status': status});
    }
    if(partner != null){
      result.addAll({'partner': partner!.toMap()});
    }
    if(createdAt != null){
      result.addAll({'createdAt': createdAt!});
    }
    if(updatedAt != null){
      result.addAll({'updatedAt': updatedAt!});
    }
    if(userId != null){
      result.addAll({'userId': userId});
    }
    if(refund != null){
      result.addAll({'refund': refund!.toMap()});
    }
    if(replacementProduct != null){
      result.addAll({'replacementProduct': replacementProduct!.toMap()});
    }
    if(v != null){
      result.addAll({'v': v});
    }
  
    return result;
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      customer: map['customer'] != null ? Customer.fromMap(map['customer']) : null,
      seller: map['seller'] != null ? Partner.fromMap(map['seller']) : null,
      payment: map['payment'] != null ? Payment.fromMap(map['payment']) : null,
      delivery: map['delivery'] != null ? Delivery.fromMap(map['delivery']) : null,
      products: map['products'] != null ? List<OrderProduct>.from(map['products']?.map((x) => OrderProduct.fromMap(x))) : null,
      id: map['id'],
      coupon: map['coupon'] != null ? Coupon.fromMap(map['coupon']) : null,
      invoices: map['invoices'] != null ? List<Invoice>.from(map['invoices']?.map((x) => Invoice.fromMap(x))) : null,
      orderSellerId: map['orderSellerId'],
      status: map['status'],
      partner: map['partner'] != null ? Partner.fromMap(map['partner']) : null,
      createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null,
      updatedAt: map['updatedAt'] != null ? DateTime.tryParse(map['updatedAt']) : null,
      userId: map['userId'],
      refund: map['refund'] != null ? Refund.fromMap(map['refund']) : null,
      replacementProduct: map['replacementProduct'] != null ? ReplacementProduct.fromMap(map['replacementProduct']) : null,
      v: map['v']?.toInt(),
    );
  }

}
