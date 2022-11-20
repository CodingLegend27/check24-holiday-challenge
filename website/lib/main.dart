import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:holiday_aggregator_24/domain/repositories/search.repository.dart';
import 'package:holiday_aggregator_24/domain/services/api.dart';
import 'package:holiday_aggregator_24/domain/services/services_injection.dart';
import 'package:holiday_aggregator_24/firebase_options.dart';
import 'package:holiday_aggregator_24/routes/router.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  serviceInjection();
  runApp(const HolidayAggregator24());
}

class HolidayAggregator24 extends StatelessWidget {
  const HolidayAggregator24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SearchRepository(getIt<Api>()))
      ],
      builder: (context, _) {
        return MaterialApp.router(
          title: 'Holiday Aggregator 24',
          routerDelegate: AutoRouterDelegate(
            router,
            navigatorObservers: () => [AutoRouteObserver()],
          ),
          routeInformationParser: router.defaultRouteParser(),
        );
      },
    );
  }
}
