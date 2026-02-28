class SARewardModel {
  final String id;
  final String userId;
  final double amount;

  SARewardModel({required this.id, required this.userId, required this.amount});

  factory SARewardModel.fromJson(Map<String, dynamic> json) => SARewardModel(
        id: json['id'],
        userId: json['user_id'],
        amount: (json['amount'] ?? 0).toDouble(),
      );
}
