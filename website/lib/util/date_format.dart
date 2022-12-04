DateTime now = DateTime.now();

extension DateFormatter on DateTime {
  get yearMonthDay =>
      "${year.toString()}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";
}
