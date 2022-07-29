import 'dart:convert';

class Partner {
    Partner({
        this.id,
        this.name,
        this.doc,
        this.salesCommission,
        this.salesPercentual,
        this.salesComission,
        this.email,
    });

    final String? id;
    final String? name;
    final String? doc;
    final int? salesCommission;
    final int? salesPercentual;
    final int? salesComission;
    final String? email;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(name != null){
      result.addAll({'name': name});
    }
    if(doc != null){
      result.addAll({'doc': doc});
    }
    if(salesCommission != null){
      result.addAll({'salesCommission': salesCommission});
    }
    if(salesPercentual != null){
      result.addAll({'salesPercentual': salesPercentual});
    }
    if(salesComission != null){
      result.addAll({'salesComission': salesComission});
    }
    if(email != null){
      result.addAll({'email': email});
    }
  
    return result;
  }

  factory Partner.fromMap(Map<String, dynamic> map) {
    return Partner(
      id: map['id'],
      name: map['name'],
      doc: map['doc'],
      salesCommission: map['salesCommission']?.toInt(),
      salesPercentual: map['salesPercentual']?.toInt(),
      salesComission: map['salesComission']?.toInt(),
      email: map['email'],
    );
  }

}
