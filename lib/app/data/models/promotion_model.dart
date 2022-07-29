import 'dart:convert';

class Promotion {
    Promotion({
        this.discount,
        this.percentual,
    });

    final int? discount;
    final int? percentual;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(discount != null){
      result.addAll({'discount': discount});
    }
    if(percentual != null){
      result.addAll({'percentual': percentual});
    }
  
    return result;
  }

  factory Promotion.fromMap(Map<String, dynamic> map) {
    return Promotion(
      discount: map['discount']?.toInt(),
      percentual: map['percentual']?.toInt(),
    );
  }

}
