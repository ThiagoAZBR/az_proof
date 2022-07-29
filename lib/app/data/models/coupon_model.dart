import 'dart:convert';

class Coupon {
    Coupon({
        this.id,
        this.code,
        this.name,
        this.discount,
        this.type,
        this.application,
    });

    final String? id;
    final String? code;
    final String? name;
    final int? discount;
    final String? type;
    final String? application;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(code != null){
      result.addAll({'code': code});
    }
    if(name != null){
      result.addAll({'name': name});
    }
    if(discount != null){
      result.addAll({'discount': discount});
    }
    if(type != null){
      result.addAll({'type': type});
    }
    if(application != null){
      result.addAll({'application': application});
    }
  
    return result;
  }

  factory Coupon.fromMap(Map<String, dynamic> map) {
    return Coupon(
      id: map['id'],
      code: map['code'],
      name: map['name'],
      discount: map['discount']?.toInt(),
      type: map['type'],
      application: map['application'],
    );
  }


}
