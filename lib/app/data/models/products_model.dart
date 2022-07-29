import 'package:az_proof/app/data/models/fluffy_attribute_model.dart';

class Products {
    Products({
        this.id,
        this.attributes,
        this.quantity,
    });

    final String? id;
    final List<FluffyAttribute>? attributes;
    final int? quantity;
}