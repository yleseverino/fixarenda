import 'package:dio/dio.dart';
import 'package:fixarenda/src/features/selic_real/data/remote/selic_real_remote_model.dart';
import 'package:fixarenda/src/util/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'selic_real_retrofit.g.dart';

@RestApi(baseUrl: 'https://api.bcb.gov.br/dados/serie/bcdata.sgs.11')
abstract class SelicRealRetrofit {
  factory SelicRealRetrofit(Dio dio, {String baseUrl}) = _SelicRealRetrofit;

  @GET('/dados')
  Future<List<SelicRealRemoteModel>> getSelicFromCentralBank({
    @Query('dataInicial') required String startDate,
    @Query('dataFinal') required String endDate,
    @Query('formato') String format = 'json',
  });
}

final selicRealRetrofitProvider = Provider<SelicRealRetrofit>((ref) {
  final dio = ref.watch(genericDioProvider);
  return SelicRealRetrofit(dio);
});
