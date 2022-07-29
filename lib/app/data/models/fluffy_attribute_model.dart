import 'dart:convert';

class FluffyAttribute {
    FluffyAttribute({
        this.id,
    });

    final String? id;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
  
    return result;
  }

  factory FluffyAttribute.fromMap(Map<String, dynamic> map) {
    return FluffyAttribute(
      id: map['id'],
    );
  }

}
