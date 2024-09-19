import 'package:dio/dio.dart';
import 'package:fixarenda/src/database/app_remote_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final genericDioProvider = Provider<Dio>((ref) {
  return Dio();
});

final coingeckoDioProvider = Provider<Dio>((ref) {
  final remoteConfig = ref.watch(appRemoteConfigProvider);

  final dio = Dio();
  dio.options.headers['x-cg-demo-api-key'] = remoteConfig.coinGeckoApiKey;

  return dio;
});
