import 'supabase_service.dart';
import '../models/post_model.dart';

class PostService {
  static Future<List<PostModel>> fetchFeed() async {
    final res = await SupabaseService.client.from('posts').select().order('created_at', ascending: false);
    return (res as List).map((e) => PostModel.fromJson(e)).toList();
  }
}
