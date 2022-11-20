// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      hotelId: toInt(json['hotelid'] as String),
      departureDate: toDateTime(json['departuredate'] as String),
      returnDate: toDateTime(json['returndate'] as String),
      countAdults: toInt(json['countadults'] as String),
      countChildren: toInt(json['countchildren'] as String),
      price: json['price'] as int,
      inboundDepartureAirport: json['inbounddepartureairport'] as String,
      inboundArrivalAirport: json['inboundarrivalairport'] as String,
      inboundAirline: json['inboundairline'] as String,
      inboundArrivalTime: toDateTime(json['inboundarrivaldatetime'] as String),
      outboundDepartureAirport: json['outbounddepartureairport'] as String,
      outboundArrivalAirport: json['outboundarrivalairport'] as String,
      outboundAirline: json['outboundairline'] as String,
      outboundArrivalTime:
          toDateTime(json['outboundarrivaldatetime'] as String),
      mealType: json['mealtype'] as String,
      isOceanView: toBool(json['oceanview'] as String),
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
