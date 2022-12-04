import 'package:flutter/material.dart';
import 'package:holiday_aggregator_24/domain/models/hotel.model.dart';
import 'package:holiday_aggregator_24/domain/repositories/search.repository.dart';
import 'package:holiday_aggregator_24/ui/screens/search/hotel_offers.dart';

import 'package:holiday_aggregator_24/ui/screens/search/input_area.dart';
import 'package:holiday_aggregator_24/ui/screens/search/offer_results.dart';
import 'package:holiday_aggregator_24/ui/screens/search/search.viewmodel.dart';
import 'package:provider/provider.dart';

const breakPoint = 800;

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
  static Widget _loading() => const Text("Loading ...");

  static Widget _error() => const Text("Something went wrong ...");

  static Widget _initial() => const Text("please input your preferences");

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          SearchViewModel(searchRepository: context.read<SearchRepository>()),
      child: Builder(
        builder: (context) {
          final model = context.watch<SearchViewModel>();
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.topCenter,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  direction: MediaQuery.of(context).size.width < breakPoint
                      ? Axis.vertical
                      : Axis.horizontal,
                  children: [
                    InputArea(
                      departureAirports: model.departureAirports,
                      destinations: model.destinations,
                      onSubmit: (parameters) {
                        model.search(
                          parameters: parameters,
                        );
                      },
                    ),
                    model.state.map(
                      error: (_) => _error(),
                      loading: (_) => _loading(),
                      initial: (_) => _initial(),
                      searchResults: (state) => SearchResults(
                        offers: state.offers,
                        hotels: state.hotels,
                        onHotelSelect: (Hotel hotel) =>
                            model.onHotelSelect(hotel),
                      ),
                      hotelOffers: (state) => HotelView(
                        hotel: state.hotel,
                        offers: state.offers,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
