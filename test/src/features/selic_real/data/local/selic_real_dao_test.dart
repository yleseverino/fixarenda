import 'dart:io';

import 'package:fixarenda/src/database/database.dart';
import 'package:fixarenda/src/features/selic_real/data/local/selic_real_dao.dart';
import 'package:floor/floor.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('database tests populate', () {
    late AppDatabase database;
    late SelicRealDao selicDao;

    setUp(
      () async {
        final file = File(
          'test/src/features/selic_real/data/local/SelicRealEntity_202408240857.sql',
        );
        final insertQuery = await file.readAsString();

        database =
            await $FloorAppDatabase.inMemoryDatabaseBuilder().addCallback(
          Callback(
            onCreate: (database, version) async {
              await database.execute(insertQuery);
            },
          ),
        ).build();
        selicDao = database.selicRealDao;
      },
    );

    tearDown(() async {
      await database.close();
    });

    test(
        '[ getLastDate on selicDao ] '
        '[returns the correct date for the populate data]', () async {
      final actual = await selicDao.getLastDate();

      expect(
        actual,
        equals(DateTime.fromMillisecondsSinceEpoch(1724382000000)),
      );
    });
  });
}
