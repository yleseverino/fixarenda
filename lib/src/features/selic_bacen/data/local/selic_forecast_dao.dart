import 'package:fixarenda/src/features/selic_bacen/data/local/selic_forecast_entity.dart';
import 'package:fixarenda/src/features/selic_bacen/data/meeting_entity.dart';
import 'package:floor/floor.dart';

@dao
abstract class SelicForecastDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertSelic(List<SelicForecastEntity> selics);

  @Query('''
      SELECT
          AVG(sf.median)
      from
      SelicForecastEntity sf
      where
      date = (
      SELECT
      max(date) as maxDate
      from
      SelicForecast)
      and baseCalculo = 0
      and meeting >= :greaterMeeting
      and meeting <= :lessMeeting
  ''')
  Future<double?> getSelicAverageBetweenMeetings(
    MeetingEntity greaterMeeting,
    MeetingEntity lessMeeting,
  );

  @Query('''
        SELECT
        *
      from
        SelicForecastEntity sf
      where
        date = (
        SELECT
          max(date) as maxDate
        from
          SelicForecastEntity)
        and baseCalculo = 0
        and meeting >= :meeting
      group by
        meeting
      order by
        meeting asc
      limit 16
  ''')
  Future<List<SelicForecastEntity>> getLastForecastByMeeting(
    MeetingEntity meeting,
  );

  @Query('''
        SELECT
        *
      from
        SelicForecastEntity sf
      where
        date = (
        SELECT
          max(date) as maxDate
        from
          SelicForecastEntity)
        and baseCalculo = 0
        and meeting >= :meeting
      group by
        meeting
      order by
        meeting asc
      limit 16
  ''')
  Stream<List<SelicForecastEntity>> watchLastForecastByMeeting(
    MeetingEntity meeting,
  );

  @Query('SELECT max(date) from SelicForecastEntity sf ')
  Future<String?> getLastDate();

  @Query('DELETE FROM SelicForecastEntity')
  Future<void> deleteAllForecasts();

  @transaction
  Future<void> replaceForecast(List<SelicForecastEntity> selics) async {
    await deleteAllForecasts();
    await insertSelic(selics);
  }
}
