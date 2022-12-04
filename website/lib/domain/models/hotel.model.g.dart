// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hotel _$$_HotelFromJson(Map<String, dynamic> json) => _$_Hotel(
      id: json['hotelid'] as int,
      name: json['hotelname'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      stars: (json['hotelstars'] as num).toDouble(),
    );

Map<String, dynamic> _$$_HotelToJson(_$_Hotel instance) => <String, dynamic>{
      'hotelid': instance.id,
      'hotelname': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'hotelstars': instance.stars,
    };
