import 'supabase_service.dart';

class SARewardService {
  static Future<void> grantFollowerReward(String userId, double amount) async {
    await SupabaseService.client.from('sa_rewards').insert({
      'user_id': userId,
      'amount': amount,
    });
  }
}
