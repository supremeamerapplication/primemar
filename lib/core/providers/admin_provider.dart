import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/admin_model.dart';
import '../services/admin_service.dart';

final adminProvider = StateNotifierProvider<AdminNotifier, AdminModel?>((ref) => AdminNotifier());

class AdminNotifier extends StateNotifier<AdminModel?> {
  AdminNotifier(): super(null);

  Future<void> load(String email) async {
    state = await AdminService.getAdminByEmail(email);
  }
}
