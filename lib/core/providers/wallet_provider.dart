import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/wallet_model.dart';
import '../services/wallet_service.dart';

final walletProvider = StateNotifierProvider<WalletNotifier, WalletModel?>((ref) => WalletNotifier());

class WalletNotifier extends StateNotifier<WalletModel?> {
  WalletNotifier(): super(null);

  Future<void> loadWallet(String userId) async {
    state = await WalletService.getWallet(userId);
  }
}
