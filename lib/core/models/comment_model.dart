class CommentModel {
  final String id;
  final String postId;
  final String userId;
  final String content;

  CommentModel({required this.id, required this.postId, required this.userId, required this.content});

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'],
      postId: json['post_id'],
      userId: json['user_id'],
      content: json['content'],
    );
  }
}
