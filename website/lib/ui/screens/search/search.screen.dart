import 'package:flutter/material.dart';
import 'package:holiday_aggregator_24/domain/repositories/search.repository.dart';

import 'package:holiday_aggregator_24/ui/screens/search/input_area.dart';
import 'package:holiday_aggregator_24/ui/screens/search/results.dart';
import 'package:holiday_aggregator_24/ui/screens/search/search.viewmodel.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SearchView();
  }
}

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  static Widget _loading() => const Text("Loading");

  static Widget _error() => const Text("Something went wrong ...");

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          SearchViewModel(searchRepository: context.read<SearchRepository>()),
      child: Builder(
        builder: (context) {
          final model = context.watch<SearchViewModel>();
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Row(
                children: [
                  // TODO add responsive design here
                  InputArea(
                    departureAirports: model.departureAirports,
                    destinations: model.destinations,
                    onSubmit: (parameters) => model.search(
                      parameters: parameters,
                    ),
                  ),
                  model.state.map(
                    error: (_) => _error(),
                    loading: (_) => _loading(),
                    success: (state) => SearchResults(offers: state.offers),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
