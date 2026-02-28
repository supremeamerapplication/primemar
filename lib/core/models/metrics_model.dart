class MetricsModel {
  final int totalUsers;
  final int activeUsers;
  final int verifiedCreators;
  final double totalSaDistributed;
  final double totalSaReserved;
  final double totalSaWithdrawn;
  final double platformEarnings;
  final int totalPosts;
  final int totalViews;

  MetricsModel({
    this.totalUsers = 0,
    this.activeUsers = 0,
    this.verifiedCreators = 0,
    this.totalSaDistributed = 0,
    this.totalSaReserved = 0,
    this.totalSaWithdrawn = 0,
    this.platformEarnings = 0,
    this.totalPosts = 0,
    this.totalViews = 0,
  });

  factory MetricsModel.fromJson(Map<String, dynamic> json) {
    return MetricsModel(
      totalUsers: json['total_users'] ?? 0,
      activeUsers: json['active_users'] ?? 0,
      verifiedCreators: json['verified_creators'] ?? 0,
      totalSaDistributed: (json['total_sa_distributed'] ?? 0).toDouble(),
      totalSaReserved: (json['total_sa_reserved'] ?? 0).toDouble(),
      totalSaWithdrawn: (json['total_sa_withdrawn'] ?? 0).toDouble(),
      platformEarnings: (json['platform_earnings'] ?? 0).toDouble(),
      totalPosts: json['total_posts'] ?? 0,
      totalViews: json['total_views'] ?? 0,
    );
  }
}
