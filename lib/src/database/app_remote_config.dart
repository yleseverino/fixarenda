import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:fixarenda/src/features/selic_bacen/data/meeting_entity.dart';
import 'package:fixarenda/src/features/selic_bacen/domain/models/meeting_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppRemoteConfig {
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  DateTime get lowestDateHasDollarValue =>
      DateTime.parse(_remoteConfig.getString('lowest_date_default_dollar'));

  DateTime get lowestDateHasSelicRate =>
      DateTime.parse(_remoteConfig.getString('lowest_date_default_selic'));

  double get currentSelic => _remoteConfig.getDouble('selic_atual');

  MeetingModel get nextFocusMeeting => MeetingModel.fromEntity(
        MeetingEntity.fromJson(
          _remoteConfig.getString('next_focus_meeting'),
        ),
      );

  String get coinGeckoApiKey => _remoteConfig.getString('coin_gecko_api_key');

  static Future<void> init() async {
    final remoteConfig = AppRemoteConfig()._remoteConfig;

    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(hours: 1),
      ),
    );

    await remoteConfig.setDefaults({
      'selic_atual': 10.5,
      'next_focus_meeting': 'R6/2024',
      'coin_gecko_api_key': 'CG-LeZahCx7ewi7hhqLFrg3o5LA',
      'lowest_date_default_dollar': '2002-01-01',
      'lowest_date_default_selic': '2002-01-01',
    });

    remoteConfig.onConfigUpdated.listen((event) async {
      await remoteConfig.activate();
    });
  }
}

final appRemoteConfigProvider = Provider<AppRemoteConfig>((ref) {
  return AppRemoteConfig();
});
