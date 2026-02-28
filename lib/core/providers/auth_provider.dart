import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/auth_service.dart';

final authProvider = StateNotifierProvider<AuthNotifier, bool>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier(): super(false);

  Future<void> login(String email, String password) async {
    final user = await AuthService.signIn(email, password);
    state = user != null;
  }

  Future<void> logout() async {
    await AuthService.signOut();
    state = false;
  }
}
