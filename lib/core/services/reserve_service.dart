import 'supabase_service.dart';

class ReserveService {
  static Future<double> getReserve() async {
    final res = await SupabaseService.client.from('reserve').select('total_sa_reserved').single();
    return (res['total_sa_reserved'] ?? 0).toDouble();
  }

  static Future<void> modifyReserve(double delta) async {
    await SupabaseService.client.rpc('modify_reserve', params: {'p_delta': delta});
  }
}
