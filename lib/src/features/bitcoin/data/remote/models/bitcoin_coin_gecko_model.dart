import 'package:fixarenda/src/features/bitcoin/data/remote/models/bitcoin_remote_model.dart';

class BitcoinCoinGeckoRemoteModel {
  const BitcoinCoinGeckoRemoteModel({required this.bitcoinList});

  factory BitcoinCoinGeckoRemoteModel.fromJson(Map<String, dynamic> json) {
    final listData = json['prices'] as List;
    final lisPrices =
        listData.map((item) => [item[0] as num, item[1] as num]).toList();

    return BitcoinCoinGeckoRemoteModel(
      bitcoinList: lisPrices
          .map(
            (item) => BitcoinRemoteModel(
              date: DateTime.fromMillisecondsSinceEpoch(
                item.first.toInt(),
              ),
              value: item.last,
            ),
          )
          .toList(),
    );
  }

  final List<BitcoinRemoteModel> bitcoinList;
}
