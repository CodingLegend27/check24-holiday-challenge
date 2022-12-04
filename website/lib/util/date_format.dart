DateTime now = DateTime.now();

extension DateFormatter on DateTime {
  get yearMonthDay =>
      "${year.toString()}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";

  get dayMonthYear =>
      "${day.toString().padLeft(2, '0')}.${month.toString().padLeft(2, '0')}.${year.toString()}";

  get time =>
      "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
}

extension TimeFormatter on Duration {
  get hoursMinutes => "$inHours:${(inMinutes % 60).toString().padLeft(2, '0')}";
}
