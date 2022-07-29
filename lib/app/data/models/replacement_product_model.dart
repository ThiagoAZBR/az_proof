import 'package:az_proof/app/data/models/products_model.dart';

class ReplacementProduct {
    ReplacementProduct({
        this.type,
        this.reason,
        this.comment,
        this.products,
    });

    final String? type;
    final String? reason;
    final String? comment;
    final List<Products>? products;
}