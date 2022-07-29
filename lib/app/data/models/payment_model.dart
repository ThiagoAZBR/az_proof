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
}