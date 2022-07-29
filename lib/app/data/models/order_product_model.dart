import 'dart:convert';

import 'package:az_proof/app/data/models/coupon_model.dart';
import 'package:az_proof/app/data/models/history_model.dart';
import 'package:az_proof/app/data/models/promotion_model.dart';
import 'package:az_proof/app/data/models/purple_attribute_model.dart';

class OrderProduct {
    OrderProduct({
        this.id,
        this.sellerId,
        this.name,
        this.quantity,
        this.sku,
        this.image,
        this.status,
        this.price,
        this.discount,
        this.originalPrice,
        this.rating,
        this.replacementCoupon,
        this.coupon,
        this.promotion,
        this.amount,
        this.history,
        this.active,
        this.replacementProduct,
        this.productSellerId,
        this.attributes,
    });

    final String? id;
    final String? sellerId;
    final String? name;
    final int? quantity;
    final String? sku;
    final String? image;
    final String? status;
    final double? price;
    final int? discount;
    final double? originalPrice;
    final dynamic? rating;
    final bool? replacementCoupon;
    final Coupon? coupon;
    final Promotion? promotion;
    final int? amount;
    final List<History>? history;
    final bool? active;
    final dynamic? replacementProduct;
    final String? productSellerId;
    final List<PurpleAttribute>? attributes;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(sellerId != null){
      result.addAll({'sellerId': sellerId});
    }
    if(name != null){
      result.addAll({'name': name});
    }
    if(quantity != null){
      result.addAll({'quantity': quantity});
    }
    if(sku != null){
      result.addAll({'sku': sku});
    }
    if(image != null){
      result.addAll({'image': image});
    }
    if(status != null){
      result.addAll({'status': status});
    }
    if(price != null){
      result.addAll({'price': price});
    }
    if(discount != null){
      result.addAll({'discount': discount});
    }
    if(originalPrice != null){
      result.addAll({'originalPrice': originalPrice});
    }
    if(rating != null){
      result.addAll({'rating': rating});
    }
    if(replacementCoupon != null){
      result.addAll({'replacementCoupon': replacementCoupon});
    }
    if(coupon != null){
      result.addAll({'coupon': coupon!.toMap()});
    }
    if(promotion != null){
      result.addAll({'promotion': promotion!.toMap()});
    }
    if(amount != null){
      result.addAll({'amount': amount});
    }
    if(history != null){
      result.addAll({'history': history!.map((x) => x?.toMap()).toList()});
    }
    if(active != null){
      result.addAll({'active': active});
    }
    if(replacementProduct != null){
      result.addAll({'replacementProduct': replacementProduct});
    }
    if(productSellerId != null){
      result.addAll({'productSellerId': productSellerId});
    }
    if(attributes != null){
      result.addAll({'attributes': attributes!.map((x) => x?.toMap()).toList()});
    }
  
    return result;
  }

  factory OrderProduct.fromMap(Map<String, dynamic> map) {
    return OrderProduct(
      id: map['id'],
      sellerId: map['sellerId'],
      name: map['name'],
      quantity: map['quantity']?.toInt(),
      sku: map['sku'],
      image: map['image'],
      status: map['status'],
      price: map['price']?.toDouble(),
      discount: map['discount']?.toInt(),
      originalPrice: map['originalPrice']?.toDouble(),
      rating: map['rating'],
      replacementCoupon: map['replacementCoupon'],
      coupon: map['coupon'] != null ? Coupon.fromMap(map['coupon']) : null,
      promotion: map['promotion'] != null ? Promotion.fromMap(map['promotion']) : null,
      amount: map['amount']?.toInt(),
      history: map['history'] != null ? List<History>.from(map['history']?.map((x) => History.fromMap(x))) : null,
      active: map['active'],
      replacementProduct: map['replacementProduct'],
      productSellerId: map['productSellerId'],
      attributes: map['attributes'] != null ? List<PurpleAttribute>.from(map['attributes']?.map((x) => PurpleAttribute.fromMap(x))) : null,
    );
  }

}
