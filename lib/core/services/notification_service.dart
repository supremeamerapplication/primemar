import 'supabase_service.dart';
import '../models/notification_model.dart';

class NotificationService {
  static Future<List<NotificationModel>> fetchNotifications(String userId) async {
    final res = await SupabaseService.client.from('notifications').select().eq('user_id', userId).order('created_at', ascending: false);
    return (res as List).map((e) => NotificationModel.fromJson(e)).toList();
  }
}
