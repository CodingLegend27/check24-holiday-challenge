// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holiday_aggregator_24/util/string_formatter.dart';

part 'offer.model.g.dart';
part 'offer.model.freezed.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    @JsonKey(name: 'hotelid', fromJson: toInt) required int hotelId,
    @JsonKey(name: 'departuredate', fromJson: toDateTime)
        required DateTime departureDate,
    @JsonKey(name: 'returndate', fromJson: toDateTime)
        required DateTime returnDate,
    @JsonKey(name: 'countadults', fromJson: toInt) required int countAdults,
    @JsonKey(name: 'countchildren', fromJson: toInt) required int countChildren,
    required int price,
    @JsonKey(name: 'inbounddepartureairport')
        required String inboundDepartureAirport,
    @JsonKey(name: 'inboundarrivalairport')
        required String inboundArrivalAirport,
    @JsonKey(name: 'inboundairline') required String inboundAirline,
    @JsonKey(name: 'inboundarrivaldatetime', fromJson: toDateTime)
        required DateTime inboundArrivalTime,
    @JsonKey(name: 'outbounddepartureairport')
        required String outboundDepartureAirport,
    @JsonKey(name: 'outboundarrivalairport')
        required String outboundArrivalAirport,
    @JsonKey(name: 'outboundairline') required String outboundAirline,
    @JsonKey(name: 'outboundarrivaldatetime', fromJson: toDateTime)
        required DateTime outboundArrivalTime,
    @JsonKey(name: 'mealtype') required String mealType,
    @JsonKey(name: 'oceanview', fromJson: toBool) required bool isOceanView,
    @JsonKey(name: 'roomtype') required String roomType,
  }) = _Offer;

  const Offer._();

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}
