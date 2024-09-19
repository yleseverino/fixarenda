import 'package:dio/dio.dart';
import 'package:fixarenda/src/features/dollar/data/remote/bacen/dolar_bacen_model.dart';
import 'package:fixarenda/src/util/dio.dart';
import 'package:intl/intl.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dollar_bacen_retrofit.g.dart';

@RestApi(
  baseUrl: 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata',
)
abstract class DollarBacenRetrofit {
  factory DollarBacenRetrofit(Dio dio, {String baseUrl}) = _DollarBacenRetrofit;

  @GET(
    '/CotacaoDolarPeriodo(dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)',
  )
  Future<DollarBacenModel> getDollarFromCentralBank({
    /// MM-DD-YYYY
    @Query('@dataInicial') required String startDate,

    /// MM-DD-YYYY
    @Query('@dataFinalCotacao') required String endDate,
    @Query('format') String format = 'json',
    @Query('select') String select = 'cotacaoVenda,dataHoraCotacao',
    @Query('top') String limit = '10000',
  });

  static String formatDateFilter(DateTime date) {
    final dateFormatter = DateFormat('MM-dd-yyyy');
    return "'${dateFormatter.format(date.toLocal())}'";
  }
}

final dollarBacenRetrofitProvider = Provider<DollarBacenRetrofit>((ref) {
  final genericDio = ref.watch(genericDioProvider);

  return DollarBacenRetrofit(genericDio);
});
