class WalletModel {
  final String userId;
  final double saBalance;
  final double usdBalance;
  final double ngnBalance;

  WalletModel({required this.userId, this.saBalance = 0, this.usdBalance = 0, this.ngnBalance = 0});

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return WalletModel(
      userId: json['user_id'],
      saBalance: (json['sa_balance'] ?? 0).toDouble(),
      usdBalance: (json['usd_balance'] ?? 0).toDouble(),
      ngnBalance: (json['ngn_balance'] ?? 0).toDouble(),
    );
  }
}
