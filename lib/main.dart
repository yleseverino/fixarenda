import 'package:firebase_core/firebase_core.dart';
import 'package:fixarenda/firebase_options.dart';
import 'package:fixarenda/src/app.dart';
import 'package:fixarenda/src/database/app_remote_config.dart';
import 'package:fixarenda/src/database/database.dart';
import 'package:fixarenda/src/util/app_work_manager.dart';
import 'package:fixarenda/src/util/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  AppWorkManager.callbackConfig();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await AppRemoteConfig.init();

  final logger = Logger();
  final database = await AppDatabase.initDb(
    logger: logger,
  );

  AppWorkManager.initWorkManager();

  runApp(
    ProviderScope(
      overrides: [
        appDatabaseProvider.overrideWithValue(database),
        loggerProvider.overrideWithValue(logger),
      ],
      child: const MyApp(),
    ),
  );
}
