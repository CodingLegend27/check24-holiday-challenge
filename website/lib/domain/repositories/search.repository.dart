import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holiday_aggregator_24/domain/models/offer.model.dart';
import 'package:holiday_aggregator_24/domain/services/api.dart';
import 'package:holiday_aggregator_24/util/log.dart';
import 'package:rxdart/rxdart.dart';

part 'search.repository.freezed.dart';

@freezed
class SearchParameters with _$SearchParameters {
  const factory SearchParameters({
    required int duration,
    required DateTime startDate,
    required DateTime endDate,
    required String startingAirport,
    required String destinationAirport,
    required int countAdults,
    required int countChildren,
  }) = _SearchParameters;
}

class SearchRepository extends ChangeNotifier {
  final Api _api;

  final BehaviorSubject<List<String>> _departureAirports;
  ValueStream<List<String>> get departureAirports => _departureAirports.stream;

  final BehaviorSubject<List<String>> _destinationAirports;
  ValueStream<List<String>> get destinationAirports =>
      _destinationAirports.stream;

  SearchRepository(this._api)
      : _departureAirports = BehaviorSubject<List<String>>(),
        _destinationAirports = BehaviorSubject<List<String>>() {
    loadDepartureAirports();
    loadDestinationAirports();
  }

  Future<List<Offer>> searchOffer({
    required SearchParameters searchParameters,
  }) async {
    try {
      final response = await _api.post(path: 'query', body: {
        'earliestStart': searchParameters.startDate,
        'latestEnd': searchParameters.endDate,
        'startingAirport': searchParameters.startingAirport,
        'destinationAirport': searchParameters.destinationAirport,
        'countAdults': searchParameters.countAdults,
        'countChildren': searchParameters.countChildren,
      });
      return (response as List).map((e) => Offer.fromJson(e)).toList();
    } catch (e, s) {
      debugLogError('error searching for profiles', e, s);
      rethrow;
    }
  }

  Future<void> loadDepartureAirports() async {
    try {
      // TODO activate again
      // final response = await _api.get('departure_airports');
      final response = ["MUC", "TEST", "TEST2"];
      final airports = response as List<String>;
      _departureAirports.add(airports);
    } catch (e, s) {
      debugLogError('error fetching departure airports', e, s);
      _departureAirports.addError(e, s);
    }
    notifyListeners();
  }

  Future<void> loadDestinationAirports() async {
    try {
      // TODO activate again
      // final response = await _api.get('destinations');
      final response = ["MUC", "TEST", "TEST2"];
      final airports = response as List<String>;
      _destinationAirports.add(airports);
    } catch (e, s) {
      debugLogError('error fetching destination airports', e, s);
      _destinationAirports.addError(e, s);
    }
    notifyListeners();
  }
}
