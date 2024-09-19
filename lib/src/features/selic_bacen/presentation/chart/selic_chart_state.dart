import 'package:fixarenda/src/database/app_remote_config.dart';
import 'package:fixarenda/src/features/selic_bacen/domain/models/selic_forecast_model.dart';
import 'package:fixarenda/src/features/selic_bacen/domain/selic_forecast_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selic_chart_state.freezed.dart';

@freezed
class SelicChartState with _$SelicChartState {
  const factory SelicChartState({
    required List<SelicChartStateItem> items,
  }) = _SelicChartState;

  factory SelicChartState.fromForecastModel({
    required List<SelicForecastModel> forecastModels,
    required double currentSelic,
  }) {
    final items = [
      SelicChartStateItem(
        label: 'Selic Atual',
        value: currentSelic,
        month: '',
        lastDate: DateTime.now(),
      ),
      ...forecastModels.map(SelicChartStateItem.fromModel),
    ];
    return SelicChartState(items: items);
  }
}

@freezed
class SelicChartStateItem with _$SelicChartStateItem {
  const factory SelicChartStateItem({
    required String label,
    required double value,
    required String month,
    required DateTime lastDate,
  }) = _SelicChartStateItem;

  factory SelicChartStateItem.fromModel(SelicForecastModel forecastModel) {
    return SelicChartStateItem(
      label: 'Reunião ${forecastModel.meeting.label}',
      value: forecastModel.value,
      month: forecastModel.meeting.month,
      lastDate: forecastModel.date,
    );
  }
}

final selicChartStateProvider =
    StateProvider.autoDispose<AsyncValue<SelicChartState>>((ref) {
  final currentSelic = ref.watch(appRemoteConfigProvider).currentSelic;
  final forecastStateChanges = ref.watch(forecastStateChangesProvider);

  return forecastStateChanges.when(
    data: (data) => AsyncData(
      SelicChartState.fromForecastModel(
        forecastModels: data,
        currentSelic: currentSelic,
      ),
    ),
    error: (error, st) => AsyncError(Exception(error), st),
    loading: AsyncLoading.new,
  );
});
