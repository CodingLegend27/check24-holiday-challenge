int toInt(String s) => int.tryParse(s)!;
DateTime toDateTime(String s) => DateTime.parse(s);
bool toBool(String s) => s == "true";
