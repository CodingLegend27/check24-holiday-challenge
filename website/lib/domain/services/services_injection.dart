import 'package:get_it/get_it.dart';
import 'package:holiday_aggregator_24/domain/services/api.dart';
import 'package:holiday_aggregator_24/routes/router.dart';

final getIt = GetIt.instance;

void serviceInjection() {
  getIt.registerLazySingleton(() => AppRouter());
  getIt.registerLazySingleton(() => Api());
}
