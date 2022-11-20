DateTime now = DateTime.now();

extension DateFormatter on DateTime {
  String toDate() =>
      "${year.toString()}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";
}
