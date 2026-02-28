import 'supabase_service.dart';
import '../models/report_model.dart';

class ReportService {
  static Future<void> reportUser(String reporterId, String targetId, String reason) async {
    await SupabaseService.client.from('reports').insert({
      'reporter_id': reporterId,
      'target_id': targetId,
      'reason': reason,
    });
  }
}
