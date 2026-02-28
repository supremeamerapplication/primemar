import 'supabase_service.dart';
import '../models/admin_model.dart';

class AdminService {
  static Future<AdminModel?> getAdminByEmail(String email) async {
    final res = await SupabaseService.client.from('admins').select().eq('email', email).single();
    if (res == null) return null;
    return AdminModel.fromJson(res);
  }
}
