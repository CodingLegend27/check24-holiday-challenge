import 'package:flutter/material.dart';
import 'package:holiday_aggregator_24/ui/screens/search/search.screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Holiday Aggregator 24',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to the Holiday Aggregator 24!'),
        ),
        body: const SearchScreen(),
      ),
    );

    // TODO
    // return const SearchScreen();
  }
}
