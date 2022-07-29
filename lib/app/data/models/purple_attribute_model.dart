import 'dart:convert';

class PurpleAttribute {
    PurpleAttribute({
        this.id,
        this.key,
        this.value,
        this.name,
        this.sort,
    });

    final String? id;
    final String? key;
    final String? value;
    final String? name;
    final int? sort;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(key != null){
      result.addAll({'key': key});
    }
    if(value != null){
      result.addAll({'value': value});
    }
    if(name != null){
      result.addAll({'name': name});
    }
    if(sort != null){
      result.addAll({'sort': sort});
    }
  
    return result;
  }

  factory PurpleAttribute.fromMap(Map<String, dynamic> map) {
    return PurpleAttribute(
      id: map['id'],
      key: map['key'],
      value: map['value'],
      name: map['name'],
      sort: map['sort']?.toInt(),
    );
  }

}
