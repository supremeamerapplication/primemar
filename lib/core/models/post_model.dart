class PostModel {
  final String id;
  final String creatorId;
  final String content;

  PostModel({required this.id, required this.creatorId, required this.content});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      creatorId: json['creator_id'],
      content: json['content'],
    );
  }
}
