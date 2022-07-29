import 'dart:convert';

class Customer {
    Customer({
        this.name,
        this.doc,
        this.email,
        this.phone,
        this.id,
    });

    final String? name;
    final String? doc;
    final String? email;
    final String? phone;
    final String? id;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(name != null){
      result.addAll({'name': name});
    }
    if(doc != null){
      result.addAll({'doc': doc});
    }
    if(email != null){
      result.addAll({'email': email});
    }
    if(phone != null){
      result.addAll({'phone': phone});
    }
    if(id != null){
      result.addAll({'id': id});
    }
  
    return result;
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      name: map['name'],
      doc: map['doc'],
      email: map['email'],
      phone: map['phone'],
      id: map['id'],
    );
  }

}
