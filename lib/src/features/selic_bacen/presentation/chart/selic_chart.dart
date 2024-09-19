import 'package:fixarenda/src/features/bitcoin/domain/bitcoin_repository.dart';
import 'package:fixarenda/src/features/dollar/domain/dollar_repository.dart';
import 'package:fixarenda/src/features/selic_bacen/domain/selic_forecast_repository.dart';
import 'package:fixarenda/src/features/selic_bacen/presentation/chart/selic_chart_state.dart';
import 'package:fixarenda/src/util/datetime_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelicChart extends ConsumerWidget {
  const SelicChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selicChartStateProvider);
    final repository = ref.watch(selicForecastRepositoryProvider);
    final bitcoinRepo = ref.watch(bitcoinRepositoryProvider);
    final dollarRepo = ref.watch(dollarRepositoryProvider);
    //
    // dollarRepo.syncDatabase();

    // print(DateTime.fromMillisecondsSinceEpoch(1704078000 * 1000));

    return state.when(
      data: (data) => SelicChartContent(
        data.items,
      ),
      error: (err, stack) => const SizedBox.shrink(),
      loading: CircularProgressIndicator.new,
    );
  }
}

class SelicChartContent extends ConsumerStatefulWidget {
  const SelicChartContent(this.forecastGraphUiModel, {super.key});
  final List<SelicChartStateItem> forecastGraphUiModel;

  @override
  ConsumerState<SelicChartContent> createState() => _SelicChartState();
}

class _SelicChartState extends ConsumerState<SelicChartContent> {
  double touchedValue = -1;

  List<String> get listMonths => widget.forecastGraphUiModel
      .map((SelicChartStateItem e) => e.month)
      .toList();
  List<double> get listValues => widget.forecastGraphUiModel
      .map((SelicChartStateItem e) => e.value)
      .toList();
  List<String> get listLabels => widget.forecastGraphUiModel
      .map((SelicChartStateItem e) => e.label)
      .toList();

  String get lastDate => widget.forecastGraphUiModel.first.lastDate.toBRDate();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(_data()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            'Relatório Focus ($lastDate)',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  LineChartData _data() {
    return LineChartData(
      lineTouchData: LineTouchData(
        getTouchedSpotIndicator:
            (LineChartBarData barData, List<int> spotIndexes) {
          return spotIndexes.map((spotIndex) {
            return TouchedSpotIndicatorData(
              FlLine(
                color: Theme.of(context).colorScheme.secondary,
                strokeWidth: 4,
              ),
              FlDotData(
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotSquarePainter(
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                    strokeWidth: 5,
                    strokeColor: Theme.of(context).colorScheme.onPrimary,
                  );
                },
              ),
            );
          }).toList();
        },
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
            return touchedBarSpots.map((barSpot) {
              final flSpot = barSpot;

              return LineTooltipItem(
                '${listLabels[flSpot.x.toInt()]}\n',
                TextStyle(
                  color: Theme.of(context).colorScheme.onTertiaryContainer,
                ),
                children: [
                  TextSpan(
                    text: '${flSpot.y} %',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiaryContainer,
                    ),
                  ),
                ],
              );
            }).toList();
          },
        ),
        touchCallback: (FlTouchEvent event, LineTouchResponse? lineTouch) {
          if (!event.isInterestedForInteractions ||
              lineTouch == null ||
              lineTouch.lineBarSpots == null) {
            setState(() {
              touchedValue = -1;
            });
            return;
          }

          final value = lineTouch.lineBarSpots![0].x;

          setState(() {
            touchedValue = value;
          });
        },
      ),
      extraLinesData: ExtraLinesData(
        horizontalLines: [
          HorizontalLine(
            y: 1.8,
            color: Theme.of(context).colorScheme.tertiary,
            strokeWidth: 1,
            dashArray: [20, 10],
          ),
        ],
      ),
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 50,
            interval: 1,
          ),
        ),
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 50,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: listValues.length.toDouble() - 1,
      minY: 7.5,
      maxY: 12,
      lineBarsData: [
        LineChartBarData(
          isStepLineChart: true,
          spots: listValues.asMap().entries.map((e) {
            return FlSpot(e.key.toDouble(), e.value);
          }).toList(),
          barWidth: 4,
          color: Theme.of(context).colorScheme.tertiary,
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.tertiary.withOpacity(0.5),
                Theme.of(context).colorScheme.tertiary.withOpacity(0),
              ],
              stops: const [0.5, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            spotsLine: BarAreaSpotsLine(
              show: true,
              flLineStyle: FlLine(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          dotData: FlDotData(
            getDotPainter: (spot, percent, barData, index) {
              return FlDotSquarePainter(
                size: 6,
                color: Colors.white,
                strokeWidth: 2,
                strokeColor: Theme.of(context).colorScheme.secondary,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 12,
    );

    final label = listMonths.elementAtOrNull(value.toInt());
    if (label == null) {
      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Container(),
      );
    }

    if (value == (listLabels.length - 1)) {
      return SideTitleWidget(
        axisSide: meta.axisSide,
        child: Container(),
      );
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(label, style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
    String text;
    switch (value.toInt()) {
      case 9:
        text = '9,0 %';
      case 10:
        text = '10,0 %';
      case 11:
        text = '11,0 %';
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }
}
