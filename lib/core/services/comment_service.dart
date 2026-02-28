import 'supabase_service.dart';
import '../models/comment_model.dart';

class CommentService {
  static Future<List<CommentModel>> fetchComments(String postId) async {
    final res = await SupabaseService.client.from('comments').select().eq('post_id', postId);
    return (res as List).map((e) => CommentModel.fromJson(e)).toList();
  }
}
