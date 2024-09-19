import 'package:dio/dio.dart';
import 'package:fixarenda/src/features/bitcoin/data/remote/models/bitcoin_coin_gecko_model.dart';
import 'package:fixarenda/src/util/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bitcoin_coingecko_retrofit.g.dart';

@RestApi(baseUrl: 'https://api.coingecko.com/api')
abstract class BitcoinCoinGeckoRetrofit {
  factory BitcoinCoinGeckoRetrofit(Dio dio, {String baseUrl}) =
      _BitcoinCoinGeckoRetrofit;

  @GET('/v3/coins/{id}/market_chart/range')
  Future<BitcoinCoinGeckoRemoteModel> getBitcoinFromCoinGecko({
    @Path('id') required String id,
    @Query('vs_currency') String currency = 'usd',
    @Query('from') required int from,
    @Query('to') required int to,
  });
}

final bitcoinCoinGeckoRetrofitProvider =
    Provider<BitcoinCoinGeckoRetrofit>((ref) {
  final dio = ref.watch(coingeckoDioProvider);

  return BitcoinCoinGeckoRetrofit(dio);
});
