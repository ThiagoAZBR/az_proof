class Invoice {
    Invoice({
        this.id,
        this.createdAt,
        this.status,
    });

    final String? id;
    final DateTime? createdAt;
    final String? status;
}