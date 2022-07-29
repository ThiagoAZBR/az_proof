import 'package:az_proof/app/data/models/coupon_model.dart';
import 'package:az_proof/app/data/models/promotion_model.dart';
import 'package:az_proof/app/data/models/purple_attribute_model.dart';

import 'package:az_proof/app/data/models/history_model.dart';

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
}