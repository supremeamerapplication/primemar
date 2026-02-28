class ReportModel {
  final String id;
  final String reporterId;
  final String targetId;
  final String reason;

  ReportModel({required this.id, required this.reporterId, required this.targetId, required this.reason});

  factory ReportModel.fromJson(Map<String, dynamic> json) {
    return ReportModel(
      id: json['id'],
      reporterId: json['reporter_id'],
      targetId: json['target_id'],
      reason: json['reason'],
    );
  }
}
