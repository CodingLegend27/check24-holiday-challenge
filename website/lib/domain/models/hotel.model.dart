import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.model.g.dart';
part 'hotel.model.freezed.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    @JsonKey(name: 'hotelstars') required double hotelStars,
  }) = _Hotel;

  const Hotel._();

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
