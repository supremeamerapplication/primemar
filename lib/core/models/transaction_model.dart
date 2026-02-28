class TransactionModel {
  final String id;
  final String userId;
  final String type;
  final double amount;

  TransactionModel({required this.id, required this.userId, required this.type, required this.amount});

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'],
      userId: json['user_id'],
      type: json['type'],
      amount: (json['amount'] ?? 0).toDouble(),
    );
  }
}
