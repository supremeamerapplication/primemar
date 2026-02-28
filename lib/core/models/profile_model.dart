class ProfileModel {
  final String userId;
  final String username;
  final String displayName;
  final String bio;
  final String avatarUrl;
  final int followersCount;
  final int followingCount;
  final int postsCount;
  final int profileViews;
  final bool verified;

  ProfileModel({
    required this.userId,
    required this.username,
    required this.displayName,
    required this.bio,
    required this.avatarUrl,
    this.followersCount = 0,
    this.followingCount = 0,
    this.postsCount = 0,
    this.profileViews = 0,
    this.verified = false,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      userId: json['user_id'],
      username: json['username'],
      displayName: json['display_name'],
      bio: json['bio'] ?? '',
      avatarUrl: json['avatar_url'] ?? '',
      followersCount: json['followers_count'] ?? 0,
      followingCount: json['following_count'] ?? 0,
      postsCount: json['posts_count'] ?? 0,
      profileViews: json['profile_views'] ?? 0,
      verified: json['verified_status'] ?? false,
    );
  }
}
