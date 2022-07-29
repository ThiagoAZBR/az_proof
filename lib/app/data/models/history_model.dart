class History {
    History({
        this.id,
        this.sellerId,
        this.name,
        this.quantity,
        this.sku,
        this.image,
        this.amount,
        this.discount,
        this.originalAmount,
    });

    final String? id;
    final String? sellerId;
    final String? name;
    final int? quantity;
    final String? sku;
    final String? image;
    final int? amount;
    final int? discount;
    final int? originalAmount;
}