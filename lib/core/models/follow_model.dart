class FollowModel {
  final String id;
  final String followerId;
  final String followingId;
  final DateTime createdAt;

  FollowModel({required this.id, required this.followerId, required this.followingId, required this.createdAt});

  factory FollowModel.fromJson(Map<String, dynamic> json) {
    return FollowModel(
      id: json['id'],
      followerId: json['follower_id'],
      followingId: json['following_id'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }
}
