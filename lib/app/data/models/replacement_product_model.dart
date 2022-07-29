import 'dart:convert';

import 'package:az_proof/app/data/models/products_model.dart';

class ReplacementProduct {
    ReplacementProduct({
        this.type,
        this.reason,
        this.comment,
        this.products,
    });

    final String? type;
    final String? reason;
    final String? comment;
    final List<Products>? products;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(type != null){
      result.addAll({'type': type});
    }
    if(reason != null){
      result.addAll({'reason': reason});
    }
    if(comment != null){
      result.addAll({'comment': comment});
    }
    if(products != null){
      result.addAll({'products': products!.map((x) => x?.toMap()).toList()});
    }
  
    return result;
  }

  factory ReplacementProduct.fromMap(Map<String, dynamic> map) {
    return ReplacementProduct(
      type: map['type'],
      reason: map['reason'],
      comment: map['comment'],
      products: map['products'] != null ? List<Products>.from(map['products']?.map((x) => Products.fromMap(x))) : null,
    );
  }

}
