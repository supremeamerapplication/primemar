class ReplyModel {
  final String id;
  final String commentId;
  final String userId;
  final String content;

  ReplyModel({required this.id, required this.commentId, required this.userId, required this.content});

  factory ReplyModel.fromJson(Map<String, dynamic> json) {
    return ReplyModel(
      id: json['id'],
      commentId: json['comment_id'],
      userId: json['user_id'],
      content: json['content'],
    );
  }
}
