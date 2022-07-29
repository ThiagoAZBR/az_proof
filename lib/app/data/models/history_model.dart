import 'dart:convert';

class History {
    History({
        this.id,
        this.sellerId,
        this.name,
        this.quantity,
        this.sku,
        this.image,
        this.amount,
        this.discount,
        this.originalAmount,
    });

    final String? id;
    final String? sellerId;
    final String? name;
    final int? quantity;
    final String? sku;
    final String? image;
    final int? amount;
    final int? discount;
    final int? originalAmount;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(sellerId != null){
      result.addAll({'seller_id': sellerId});
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
    if(amount != null){
      result.addAll({'amount': amount});
    }
    if(discount != null){
      result.addAll({'discount': discount});
    }
    if(originalAmount != null){
      result.addAll({'original_amount': originalAmount});
    }
  
    return result;
  }

  factory History.fromMap(Map<String, dynamic> map) {
    return History(
      id: map['id'],
      sellerId: map['seller_id'],
      name: map['name'],
      quantity: map['quantity']?.toInt(),
      sku: map['sku'],
      image: map['image'],
      amount: map['amount']?.toInt(),
      discount: map['discount']?.toInt(),
      originalAmount: map['original_amount']?.toInt(),
    );
  }

}
