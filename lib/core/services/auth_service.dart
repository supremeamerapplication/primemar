import 'package:supabase_flutter/supabase_flutter.dart';
import 'supabase_service.dart';

class AuthService {
  static Future<User?> signIn(String email, String password) async {
    final res = await SupabaseService.client.auth.signIn(email: email, password: password);
    return res.user;
  }

  static Future<User?> signUp(String email, String password) async {
    final res = await SupabaseService.client.auth.signUp(email, password);
    return res.user;
  }

  static Future<void> signOut() async {
    await SupabaseService.client.auth.signOut();
  }
}
