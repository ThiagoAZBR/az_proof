import 'dart:convert';

class Address {
    Address({
        this.line1,
        this.line2,
        this.line3,
        this.neighborhood,
        this.city,
        this.state,
        this.postalCode,
        this.countryCode,
    });

    final String? line1;
    final String? line2;
    final String? line3;
    final String? neighborhood;
    final String? city;
    final String? state;
    final String? postalCode;
    final String? countryCode;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(line1 != null){
      result.addAll({'line1': line1});
    }
    if(line2 != null){
      result.addAll({'line2': line2});
    }
    if(line3 != null){
      result.addAll({'line3': line3});
    }
    if(neighborhood != null){
      result.addAll({'neighborhood': neighborhood});
    }
    if(city != null){
      result.addAll({'city': city});
    }
    if(state != null){
      result.addAll({'state': state});
    }
    if(postalCode != null){
      result.addAll({'postal_Code': postalCode});
    }
    if(countryCode != null){
      result.addAll({'country_Code': countryCode});
    }
  
    return result;
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      line1: map['line1'],
      line2: map['line2'],
      line3: map['line3'],
      neighborhood: map['neighborhood'],
      city: map['city'],
      state: map['state'],
      postalCode: map['postal_Code'],
      countryCode: map['country_Code'],
    );
  }

}
