import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.model.g.dart';
part 'hotel.model.freezed.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    @JsonKey(name: 'hotelid') required int id,
    @JsonKey(name: 'hotelname') required String name,
    required double latitude,
    required double longitude,
    @JsonKey(name: 'hotelstars') required double stars,
  }) = _Hotel;

  const Hotel._();

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
