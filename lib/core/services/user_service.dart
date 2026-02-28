import 'supabase_service.dart';
import '../models/user_model.dart';

class UserService {
  static Future<UserModel?> getUser(String id) async {
    final res = await SupabaseService.client.from('users').select().eq('id', id).single();
    if (res == null) return null;
    return UserModel.fromJson(res);
  }
}
