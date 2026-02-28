class SettingsModel {
  final String userId;
  final Map<String, dynamic> preferences;

  SettingsModel({required this.userId, required this.preferences});

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
      userId: json['user_id'],
      preferences: json['preferences'] ?? {},
    );
  }
}
