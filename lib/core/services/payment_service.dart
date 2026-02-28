import 'supabase_service.dart';

class PaymentService {
  static Future<void> recordTransaction(Map<String, dynamic> data) async {
    await SupabaseService.client.from('transactions').insert(data);
  }
}
