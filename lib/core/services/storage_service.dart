import 'package:supabase_flutter/supabase_flutter.dart';
import 'supabase_service.dart';

class StorageService {
  static Future<String?> uploadProfileImage(String path, String filePath) async {
    final res = await SupabaseService.client.storage.from('media').upload(path, filePath);
    if (res.error != null) return null;
    return res.data;
  }
}
