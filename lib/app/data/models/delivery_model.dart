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
}