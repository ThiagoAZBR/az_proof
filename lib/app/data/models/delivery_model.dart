import 'dart:convert';

import 'package:az_proof/app/data/models/address_model.dart';

class Delivery {
    Delivery({
        this.history,
        this.address,
        this.status,
        this.type,
        this.trackId,
        this.trackUrl,
        this.amount,
        this.deliveryForecast,
    });

    final List<Delivery>? history;
    final Address? address;
    final String? status;
    final String? type;
    final String? trackId;
    final String? trackUrl;
    final int? amount;
    final DateTime? deliveryForecast;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(history != null){
      result.addAll({'history': history!.map((x) => x?.toMap()).toList()});
    }
    if(address != null){
      result.addAll({'address': address!.toMap()});
    }
    if(status != null){
      result.addAll({'status': status});
    }
    if(type != null){
      result.addAll({'type': type});
    }
    if(trackId != null){
      result.addAll({'track_id': trackId});
    }
    if(trackUrl != null){
      result.addAll({'track_url': trackUrl});
    }
    if(amount != null){
      result.addAll({'amount': amount});
    }
    if(deliveryForecast != null){
      result.addAll({'delivery_Forecast': deliveryForecast!});
    }
  
    return result;
  }

  factory Delivery.fromMap(Map<String, dynamic> map) {
    return Delivery(
      history: map['history'] != null ? List<Delivery>.from(map['history']?.map((x) => Delivery.fromMap(x))) : null,
      address: map['address'] != null ? Address.fromMap(map['address']) : null,
      status: map['status'],
      type: map['type'],
      trackId: map['track_id'],
      trackUrl: map['track_url'],
      amount: map['amount']?.toInt(),
      deliveryForecast: map['delivery_forecast'] != null ? DateTime.tryParse(map['delivery_forecast']) : null,
    );
  }

}
