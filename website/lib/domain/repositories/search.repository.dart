import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holiday_aggregator_24/domain/models/hotel.model.dart';
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
        'earliest_start': searchParameters.startDate.toIso8601String(),
        'latest_end': searchParameters.endDate.toIso8601String(),
        'starting_airport': searchParameters.startingAirport,
        'destination_airport': searchParameters.destinationAirport,
        'count_adults': searchParameters.countAdults,
        'count_children': searchParameters.countChildren,
        'duration': searchParameters.duration,
      });
      return (response as List).map((e) => Offer.fromJson(e)).toList();
    } catch (e, s) {
      debugLogError('error searching for offers', e, s);
      rethrow;
    }
  }

  Future<void> loadDepartureAirports() async {
    try {
      final response = await _api.get('departure_airports');
      final airports = (response as List).map((e) => e.toString()).toList();
      _departureAirports.add(airports);
    } catch (e, s) {
      debugLogError('error fetching departure airports', e, s);
      _departureAirports.addError(e, s);
    }
    notifyListeners();
  }

  Future<void> loadDestinationAirports() async {
    try {
      final response = await _api.get('destinations');
      final airports = (response as List).map((e) => e.toString()).toList();
      _destinationAirports.add(airports);
    } catch (e, s) {
      debugLogError('error fetching destination airports', e, s);
      _destinationAirports.addError(e, s);
    }
    notifyListeners();
  }

  Future<Hotel> getHotelById(int id) async {
    try {
      final response = await _api.get('hotel/$id');
      final hotel = Hotel.fromJson(response);
      return hotel;
    } catch (e, s) {
      debugLogError('error fetching hotel by id $id', e, s);
      rethrow;
    }
  }

  Future<List<Offer>> getOffersForHotel(int hotelId) async {
    try {
      final response = await _api.get('hotel_offers/$hotelId');
      return (response as List).map((e) => Offer.fromJson(e)).toList();
    } catch (e, s) {
      debugLogError('error fetching offers for hotel with id $hotelId', e, s);
      rethrow;
    }
  }
}
