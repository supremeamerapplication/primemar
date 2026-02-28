import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/notification_model.dart';
import '../services/notification_service.dart';

final notificationProvider = StateNotifierProvider<NotificationNotifier, List<NotificationModel>>((ref) => NotificationNotifier());

class NotificationNotifier extends StateNotifier<List<NotificationModel>> {
  NotificationNotifier(): super([]);

  Future<void> load(String userId) async {
    state = await NotificationService.fetchNotifications(userId);
  }
}
