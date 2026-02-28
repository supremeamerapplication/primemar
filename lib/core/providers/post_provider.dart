import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/post_model.dart';
import '../services/post_service.dart';

final postProvider = StateNotifierProvider<PostNotifier, List<PostModel>>((ref) => PostNotifier());

class PostNotifier extends StateNotifier<List<PostModel>> {
  PostNotifier(): super([]);

  Future<void> loadFeed() async {
    state = await PostService.fetchFeed();
  }
}
