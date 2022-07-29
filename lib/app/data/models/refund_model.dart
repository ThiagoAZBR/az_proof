import 'dart:convert';

class Refund {
    Refund({
        this.bank,
        this.agency,
        this.account,
    });

    final String? bank;
    final String? agency;
    final String? account;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(bank != null){
      result.addAll({'bank': bank});
    }
    if(agency != null){
      result.addAll({'agency': agency});
    }
    if(account != null){
      result.addAll({'account': account});
    }
  
    return result;
  }

  factory Refund.fromMap(Map<String, dynamic> map) {
    return Refund(
      bank: map['bank'],
      agency: map['agency'],
      account: map['account'],
    );
  }

}
