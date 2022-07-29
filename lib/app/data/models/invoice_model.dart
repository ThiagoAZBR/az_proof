import 'dart:convert';

class Invoice {
    Invoice({
        this.id,
        this.createdAt,
        this.status,
    });

    final String? id;
    final DateTime? createdAt;
    final String? status;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(createdAt != null){
      result.addAll({'createdAt': createdAt!.millisecondsSinceEpoch});
    }
    if(status != null){
      result.addAll({'status': status});
    }
  
    return result;
  }

  factory Invoice.fromMap(Map<String, dynamic> map) {
    return Invoice(
      id: map['id'],
      createdAt: map['createdAt'] != null ? DateTime.tryParse(map['createdAt']) : null,
      status: map['status'],
    );
  }

}
