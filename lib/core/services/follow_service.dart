import 'supabase_service.dart';

class FollowService {
  static Future<void> follow(String followerId, String followingId) async {
    await SupabaseService.client.from('follows').insert({
      'follower_id': followerId,
      'following_id': followingId,
    });
  }

  static Future<void> unfollow(String followerId, String followingId) async {
    await SupabaseService.client.from('follows').delete().match({
      'follower_id': followerId,
      'following_id': followingId,
    });
  }
}
