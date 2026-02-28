import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/metrics_model.dart';

final metricsProvider = StateNotifierProvider<MetricsNotifier, MetricsModel>((ref) => MetricsNotifier());

class MetricsNotifier extends StateNotifier<MetricsModel> {
  MetricsNotifier(): super(MetricsModel());

  void update(MetricsModel m) {
    state = m;
  }
}
