import 'package:auto_route/auto_route.dart';
import 'package:holiday_aggregator_24/main.screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: MainScreen,
      path: '/',
      initial: true,
      children: [],
    )
  ],
)
class AppRouter extends _$AppRouter {}
