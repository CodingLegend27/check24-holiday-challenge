import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holiday_aggregator_24/domain/models/hotel.model.dart';
import 'package:holiday_aggregator_24/domain/repositories/search.repository.dart';
import 'package:rx_cubit/rx_cubit.dart';
import 'package:holiday_aggregator_24/domain/models/offer.model.dart';

part 'search.viewmodel.freezed.dart';

class SearchViewModel extends RxCubit<SearchState> {
  SearchViewModel({
    required SearchRepository searchRepository,
  })  : _searchRepository = searchRepository,
        super(const _Initial()) {
    _searchRepository.departureAirports.listen(_departureAirportsListener);
    _searchRepository.destinationAirports.listen(_destinationsListener);
  }

  final SearchRepository _searchRepository;

  List<String> _departureAirports = [];
  List<String> get departureAirports => _departureAirports;

  List<String> _destinations = [];
  List<String> get destinations => _destinations;

  SearchParameters? _parameters;

  void _departureAirportsListener(List<String> airports) {
    _departureAirports = airports;
    notifyListeners();
  }

  void _destinationsListener(List<String> destinations) {
    _destinations = destinations;
    notifyListeners();
  }

  Future<void> search({
    required SearchParameters parameters,
  }) async {
    emit(const _Loading());
    _parameters = parameters;
    try {
      final offers = await _searchRepository.searchOffer(
        searchParameters: parameters,
      );
      // get the needed hotel for every offer
      List<Hotel> hotels = [];
      for (final offer in offers) {
        hotels.add(await _searchRepository.getHotelById(offer.hotelId));
      }
      emit(_SearchResults(offers: offers, hotels: hotels));
    } catch (e) {
      emit(const _Error());
    }
  }

  Future<void> onHotelSelect(Hotel hotel) async {
    emit(const _Loading());
    try {
      final offers = await _searchRepository.getOffersForHotel(
        id: hotel.id,
        parameters: _parameters!,
      );
      emit(_HotelOffers(hotel: hotel, offers: offers));
    } catch (e) {
      emit(const _Error());
    }
  }
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.error() = _Error;
  const factory SearchState.searchResults({
    required List<Offer> offers,
    required List<Hotel> hotels,
  }) = _SearchResults;
  const factory SearchState.hotelOffers({
    required Hotel hotel,
    required List<Offer> offers,
  }) = _HotelOffers;
}
