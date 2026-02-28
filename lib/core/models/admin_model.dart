class AdminModel {
  final String id;
  final String email;
  final String role;

  AdminModel({required this.id, required this.email, required this.role});

  factory AdminModel.fromJson(Map<String, dynamic> json) {
    return AdminModel(
      id: json['id'],
      email: json['email'],
      role: json['role'],
    );
  }
}
