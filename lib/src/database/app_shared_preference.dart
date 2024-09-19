import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreference {
  const AppSharedPreference(this._sharedPreferences);

  final SharedPreferencesAsync _sharedPreferences;

  Future<void> setString({required String key, required String value}) async {
    return _sharedPreferences.setString(key, value);
  }

  Future<String?> getString(String key) async {
    return _sharedPreferences.getString(key);
  }

  Stream<String?> listenToChanges(String key) async* {
    String? lastValue;
    while (true) {
      final value = await _sharedPreferences.getString(key);

      if (value == lastValue) {
        await Future<void>.delayed(const Duration(seconds: 1));
        continue;
      }

      lastValue = value;
      yield lastValue;
    }
  }

  Future<void> setBool({
    required String key,
    required bool value,
  }) async {
    await _sharedPreferences.setBool(key, value);
  }

  Future<bool?> getBool(String key) async {
    return _sharedPreferences.getBool(key);
  }

  Future<void> setDateTime(
      {required String key, required DateTime value}) async {
    await _sharedPreferences.setString(key, value.toIso8601String());
  }

  Future<DateTime?> getDateTime(String key) async {
    final value = await _sharedPreferences.getString(key);

    if (value == null) {
      return null;
    }

    return DateTime.parse(value);
  }
}

final appSharedPreferencesProvider = Provider<AppSharedPreference>((ref) {
  return AppSharedPreference(SharedPreferencesAsync());
});

final appSharedPreferencesWatchKeyChangesProvider =
    StreamProvider.autoDispose.family<String?, String>((ref, key) {
  final appSharedPreference = ref.watch(appSharedPreferencesProvider);
  return appSharedPreference.listenToChanges(key);
});
