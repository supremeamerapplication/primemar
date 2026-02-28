import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/settings_model.dart';

final settingsProvider = StateNotifierProvider<SettingsNotifier, SettingsModel?>((ref) => SettingsNotifier());

class SettingsNotifier extends StateNotifier<SettingsModel?> {
  SettingsNotifier(): super(null);
}
