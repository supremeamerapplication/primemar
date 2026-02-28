class WithdrawalModel {
  final String id;
  final String userId;
  final double saAmount;
  final double usdAmount;
  final String status;
  final DateTime createdAt;

  WithdrawalModel({
    required this.id,
    required this.userId,
    required this.saAmount,
    required this.usdAmount,
    required this.status,
    required this.createdAt,
  });

  factory WithdrawalModel.fromJson(Map<String, dynamic> json) {
    return WithdrawalModel(
      id: json['id'],
      userId: json['user_id'],
      saAmount: (json['sa_amount'] ?? 0).toDouble(),
      usdAmount: (json['usd_amount'] ?? 0).toDouble(),
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}
