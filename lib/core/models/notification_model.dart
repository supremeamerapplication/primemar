class NotificationModel {
  final String id;
  final String userId;
  final String type;
  final String message;
  final bool isRead;

  NotificationModel({required this.id, required this.userId, required this.type, required this.message, this.isRead = false});

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'],
      userId: json['user_id'],
      type: json['type'],
      message: json['message'],
      isRead: json['is_read'] ?? false,
    );
  }
}
