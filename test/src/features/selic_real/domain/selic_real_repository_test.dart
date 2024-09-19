import 'package:fixarenda/src/features/selic_real/domain/selic_real_repository.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../mocks/app_remote_config_mock.dart';
import '../mocks/selic_real_dao_mock.dart';
import '../mocks/selic_real_retrofit_mock.dart';

void main() {
  group('SelicRealRepository', () {
    late final SelicRealRepository selicRealRepository;

    setUpAll(() async {
      final selicRealDao = await SelicRealDaoMock.create();

      selicRealRepository = SelicRealRepository(
        selicDao: selicRealDao,
        selicRealRetrofit: SelicRealRetrofitMock(),
        appRemoteConfig: AppRemoteConfigMock(),
      );
    });

    test('getPercentageYeild 10 years', () async {
      final startDate = DateTime(2010);
      final endDate = DateTime(2020);
      const expectValue = 2.54400806;
      final calculateData = await selicRealRepository.getPercentageYieldFactor(
          startDate: startDate, endDate: endDate);

      expect(calculateData, moreOrLessEquals(expectValue, epsilon: 0.01));
    });

    test('getPercentageYeild 7 years', () async {
      final startDate = DateTime(2010);
      final endDate = DateTime(2017);
      const expectValue = 2.05234307;
      final calculateData = await selicRealRepository.getPercentageYieldFactor(
          startDate: startDate, endDate: endDate);

      expect(calculateData, moreOrLessEquals(expectValue, epsilon: 0.01));
    });

    test('getPercentageYeild 5 years', () async {
      final startDate = DateTime(2010);
      final endDate = DateTime(2015);
      const expectValue = 1.58983442;
      final calculateData = await selicRealRepository.getPercentageYieldFactor(
          startDate: startDate, endDate: endDate);

      expect(calculateData, moreOrLessEquals(expectValue, epsilon: 0.01));
    });

    test('getPercentageYeild 3 years', () async {
      final startDate = DateTime(2010);
      final endDate = DateTime(2013);
      const expectValue = 1.32761961;
      final calculateData = await selicRealRepository.getPercentageYieldFactor(
          startDate: startDate, endDate: endDate);

      expect(calculateData, moreOrLessEquals(expectValue, epsilon: 0.002));
    });

    test('getPercentageYeild rate not exist', () async {
      final startDate = DateTime(2025);
      final endDate = DateTime(2026);
      final calculateData = await selicRealRepository.getPercentageYieldFactor(
          startDate: startDate, endDate: endDate);

      expect(calculateData, isNull);
    });
  });
}
