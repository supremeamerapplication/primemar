class ReserveModel {
  final double totalSaReserved;
  final DateTime updatedAt;

  ReserveModel({required this.totalSaReserved, required this.updatedAt});

  factory ReserveModel.fromJson(Map<String, dynamic> json) {
    return ReserveModel(
      totalSaReserved: (json['total_sa_reserved'] ?? 0).toDouble(),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
