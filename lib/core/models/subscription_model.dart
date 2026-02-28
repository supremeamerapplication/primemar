class SubscriptionModel {
  final String userId;
  final String creatorId;
  final String status;
  final DateTime startDate;
  final DateTime expiryDate;

  SubscriptionModel({
    required this.userId,
    required this.creatorId,
    required this.status,
    required this.startDate,
    required this.expiryDate,
  });

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) {
    return SubscriptionModel(
      userId: json['user_id'],
      creatorId: json['creator_id'],
      status: json['status'],
      startDate: DateTime.parse(json['start_date']),
      expiryDate: DateTime.parse(json['expiry_date']),
    );
  }
}
