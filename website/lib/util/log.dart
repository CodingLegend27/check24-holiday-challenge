import 'dart:developer';

void debugLog(String message) {
  log(
    message,
    name: 'log',
    time: DateTime.now(),
  );
}

Future<void> debugLogError(
  String message, [
  Object? error,
  StackTrace? stackTrace,
]) async {
  log(
    message,
    name: 'error',
    stackTrace: stackTrace,
    time: DateTime.now(),
  );
}
