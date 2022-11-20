// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      hotelId: json['hotelid'] as int,
      departureDate: DateTime.parse(json['departuredate'] as String),
      returnDate: DateTime.parse(json['returndate'] as String),
      countAdults: json['countadults'] as int,
      countChildren: json['countchildren'] as int,
      price: json['price'] as int,
      inboundDepartureAirport: json['inbounddepartureairport'] as String,
      inboundArrivalAirport: json['inboundarrivalairport'] as String,
      inboundAirline: json['inboundairline'] as String,
      inboundArrivalTime:
          DateTime.parse(json['inboundarrivaldatetime'] as String),
      outboundDepartureAirport: json['outbounddepartureairport'] as String,
      outboundArrivalAirport: json['outboundarrivalairport'] as String,
      outboundAirline: json['outboundairline'] as String,
      outboundArrivalTime:
          DateTime.parse(json['outboundarrivaldatetime'] as String),
      mealType: json['mealtype'] as String,
      isOceanView: json['oceanview'] as bool,
      roomType: json['roomtype'] as String,
    );

Map<String, dynamic> _$$_OfferToJson(_$_Offer instance) => <String, dynamic>{
      'hotelid': instance.hotelId,
      'departuredate': instance.departureDate.toIso8601String(),
      'returndate': instance.returnDate.toIso8601String(),
      'countadults': instance.countAdults,
      'countchildren': instance.countChildren,
      'price': instance.price,
      'inbounddepartureairport': instance.inboundDepartureAirport,
      'inboundarrivalairport': instance.inboundArrivalAirport,
      'inboundairline': instance.inboundAirline,
      'inboundarrivaldatetime': instance.inboundArrivalTime.toIso8601String(),
      'outbounddepartureairport': instance.outboundDepartureAirport,
      'outboundarrivalairport': instance.outboundArrivalAirport,
      'outboundairline': instance.outboundAirline,
      'outboundarrivaldatetime': instance.outboundArrivalTime.toIso8601String(),
      'mealtype': instance.mealType,
      'oceanview': instance.isOceanView,
      'roomtype': instance.roomType,
    };
