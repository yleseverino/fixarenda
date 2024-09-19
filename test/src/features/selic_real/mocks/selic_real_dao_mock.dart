import 'dart:io';

import 'package:fixarenda/src/database/database.dart';
import 'package:fixarenda/src/features/selic_real/data/local/selic_real_dao.dart';
import 'package:floor/floor.dart';

class SelicRealDaoMock {
  SelicRealDaoMock._();

  static Future<SelicRealDao> create() async {
    final file = File(
      'test/src/features/selic_real/mocks/SelicRealEntity_202409180825.sql',
    );
    final insertQuery = await file.readAsString();

    final database =
        await $FloorAppDatabase.inMemoryDatabaseBuilder().addCallback(
      Callback(
        onCreate: (database, version) async {
          await database.execute(insertQuery);
        },
      ),
    ).build();

    return database.selicRealDao;
  }
}
