import 'package:intl/intl.dart';

extension DatetimeBR on DateTime {
  String toBRDate() {
    final dateFormatter = DateFormat('dd/MM/yyyy');
    return dateFormatter.format(toLocal());
  }

  String toSqliteDate() {
    final dateFormatter = DateFormat('yyyy-MM-dd');
    return dateFormatter.format(toLocal());
  }

  int get secondsSinceEpoch => millisecondsSinceEpoch ~/ 1000;
}
