import 'supabase_service.dart';

class LikeService {
  static Future<void> toggleLike(String userId, {String? postId, String? commentId, String? replyId}) async {
    // simplified: upsert like entry
    final data = {'user_id': userId, 'post_id': postId, 'comment_id': commentId, 'reply_id': replyId};
    await SupabaseService.client.from('likes').upsert(data);
  }
}
