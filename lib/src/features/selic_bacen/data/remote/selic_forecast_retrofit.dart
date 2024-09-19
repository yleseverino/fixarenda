import 'package:dio/dio.dart';
import 'package:fixarenda/src/features/selic_bacen/data/remote/selic_forecast_remote_model.dart';
import 'package:fixarenda/src/util/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'selic_forecast_retrofit.g.dart';

@RestApi(
  baseUrl:
      'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoSelic',
)
abstract class SelicForecastRetrofit {
  factory SelicForecastRetrofit(
    Dio dio, {
    String baseUrl,
  }) = _SelicForecastRetrofit;

  @GET('')
  Future<SelicForecastRemoteEntity> getSelicForecastFromBacen({
    @Query('filter') String? filter,
    @Query(r'$select') String select = 'Data,Reuniao,Mediana,baseCalculo',
    @Query(r'$format') String format = 'json',
    @Query(r'$top') String top = '100',
  });

  static String formatFilterDateGreaterThan(DateTime? date) {
    if (date == null) {
      return '';
    }
    return "Data gt '${DateFormat('yyyy-MM-dd').format(date)}'";
  }
}

final selicForecastRetrofitProvider = Provider<SelicForecastRetrofit>((ref) {
  final dio = ref.watch(genericDioProvider);
  return SelicForecastRetrofit(dio);
});
