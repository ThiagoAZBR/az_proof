import 'dart:convert';

class Payment {
    Payment({
        this.amount,
        this.originalAmount,
        this.status,
        this.discount,
        this.method,
        this.transactionId,
        this.installments,
        this.date,
    });

    final double? amount;
    final double? originalAmount;
    final String? status;
    final int? discount;
    final String? method;
    final String? transactionId;
    final int? installments;
    final DateTime? date;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(amount != null){
      result.addAll({'amount': amount});
    }
    if(originalAmount != null){
      result.addAll({'originalAmount': originalAmount});
    }
    if(status != null){
      result.addAll({'status': status});
    }
    if(discount != null){
      result.addAll({'discount': discount});
    }
    if(method != null){
      result.addAll({'method': method});
    }
    if(transactionId != null){
      result.addAll({'transactionId': transactionId});
    }
    if(installments != null){
      result.addAll({'installments': installments});
    }
    if(date != null){
      result.addAll({'date': date!});
    }
  
    return result;
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      amount: map['amount']?.toDouble(),
      originalAmount: map['originalAmount']?.toDouble(),
      status: map['status'],
      discount: map['discount']?.toInt(),
      method: map['method'],
      transactionId: map['transactionId'],
      installments: map['installments']?.toInt(),
      date: map['date'] != null ? DateTime.tryParse(map['date']) : null,
    );
  }

}
