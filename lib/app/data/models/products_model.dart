import 'dart:convert';

import 'package:az_proof/app/data/models/fluffy_attribute_model.dart';

class Products {
    Products({
        this.id,
        this.attributes,
        this.quantity,
    });

    final String? id;
    final List<FluffyAttribute>? attributes;
    final int? quantity;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(attributes != null){
      result.addAll({'attributes': attributes!.map((x) => x?.toMap()).toList()});
    }
    if(quantity != null){
      result.addAll({'quantity': quantity});
    }
  
    return result;
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id'],
      attributes: map['attributes'] != null ? List<FluffyAttribute>.from(map['attributes']?.map((x) => FluffyAttribute.fromMap(x))) : null,
      quantity: map['quantity']?.toInt(),
    );
  }

}
