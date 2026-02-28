import 'supabase_service.dart';
import '../models/wallet_model.dart';

class WalletService {
  static Future<WalletModel?> getWallet(String userId) async {
    final res = await SupabaseService.client.from('wallets').select().eq('user_id', userId).single();
    if (res == null) return null;
    return WalletModel.fromJson(res);
  }

  static Future<void> updateBalance(String userId, double saDelta) async {
    await SupabaseService.client.rpc('update_wallet_balance', params: {
      'p_user_id': userId,
      'p_sa_delta': saDelta,
    });
  }
}
