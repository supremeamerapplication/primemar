class BoostModel {
  final String id;
  final String postId;
  final String userId;
  final bool active;
  final DateTime expiration;

  BoostModel({
    required this.id,
    required this.postId,
    required this.userId,
    required this.active,
    required this.expiration,
  });

  factory BoostModel.fromJson(Map<String, dynamic> json) {
    return BoostModel(
      id: json['id'],
      postId: json['post_id'],
      userId: json['user_id'],
      active: json['boost_active'] ?? false,
      expiration: DateTime.parse(json['boost_expiration']),
    );
  }
}
