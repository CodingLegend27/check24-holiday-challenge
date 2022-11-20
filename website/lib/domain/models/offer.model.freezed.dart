// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  @JsonKey(name: 'hotelid')
  int get hotelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'departuredate')
  DateTime get departureDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'returndate')
  DateTime get returnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'countadults')
  int get countAdults => throw _privateConstructorUsedError;
  @JsonKey(name: 'countchildren')
  int get countChildren => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'inbounddepartureairport')
  String get inboundDepartureAirport => throw _privateConstructorUsedError;
  @JsonKey(name: 'inboundarrivalairport')
  String get inboundArrivalAirport => throw _privateConstructorUsedError;
  @JsonKey(name: 'inboundairline')
  String get inboundAirline => throw _privateConstructorUsedError;
  @JsonKey(name: 'inboundarrivaldatetime')
  DateTime get inboundArrivalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'outbounddepartureairport')
  String get outboundDepartureAirport => throw _privateConstructorUsedError;
  @JsonKey(name: 'outboundarrivalairport')
  String get outboundArrivalAirport => throw _privateConstructorUsedError;
  @JsonKey(name: 'outboundairline')
  String get outboundAirline => throw _privateConstructorUsedError;
  @JsonKey(name: 'outboundarrivaldatetime')
  DateTime get outboundArrivalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'mealtype')
  String get mealType => throw _privateConstructorUsedError;
  @JsonKey(name: 'oceanview')
  bool get isOceanView => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomtype')
  String get roomType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hotelid')
          int hotelId,
      @JsonKey(name: 'departuredate')
          DateTime departureDate,
      @JsonKey(name: 'returndate')
          DateTime returnDate,
      @JsonKey(name: 'countadults')
          int countAdults,
      @JsonKey(name: 'countchildren')
          int countChildren,
      int price,
      @JsonKey(name: 'inbounddepartureairport')
          String inboundDepartureAirport,
      @JsonKey(name: 'inboundarrivalairport')
          String inboundArrivalAirport,
      @JsonKey(name: 'inboundairline')
          String inboundAirline,
      @JsonKey(name: 'inboundarrivaldatetime')
          DateTime inboundArrivalTime,
      @JsonKey(name: 'outbounddepartureairport')
          String outboundDepartureAirport,
      @JsonKey(name: 'outboundarrivalairport')
          String outboundArrivalAirport,
      @JsonKey(name: 'outboundairline')
          String outboundAirline,
      @JsonKey(name: 'outboundarrivaldatetime')
          DateTime outboundArrivalTime,
      @JsonKey(name: 'mealtype')
          String mealType,
      @JsonKey(name: 'oceanview')
          bool isOceanView,
      @JsonKey(name: 'roomtype')
          String roomType});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? departureDate = null,
    Object? returnDate = null,
    Object? countAdults = null,
    Object? countChildren = null,
    Object? price = null,
    Object? inboundDepartureAirport = null,
    Object? inboundArrivalAirport = null,
    Object? inboundAirline = null,
    Object? inboundArrivalTime = null,
    Object? outboundDepartureAirport = null,
    Object? outboundArrivalAirport = null,
    Object? outboundAirline = null,
    Object? outboundArrivalTime = null,
    Object? mealType = null,
    Object? isOceanView = null,
    Object? roomType = null,
  }) {
    return _then(_value.copyWith(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      countAdults: null == countAdults
          ? _value.countAdults
          : countAdults // ignore: cast_nullable_to_non_nullable
              as int,
      countChildren: null == countChildren
          ? _value.countChildren
          : countChildren // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      inboundDepartureAirport: null == inboundDepartureAirport
          ? _value.inboundDepartureAirport
          : inboundDepartureAirport // ignore: cast_nullable_to_non_nullable
              as String,
      inboundArrivalAirport: null == inboundArrivalAirport
          ? _value.inboundArrivalAirport
          : inboundArrivalAirport // ignore: cast_nullable_to_non_nullable
              as String,
      inboundAirline: null == inboundAirline
          ? _value.inboundAirline
          : inboundAirline // ignore: cast_nullable_to_non_nullable
              as String,
      inboundArrivalTime: null == inboundArrivalTime
          ? _value.inboundArrivalTime
          : inboundArrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      outboundDepartureAirport: null == outboundDepartureAirport
          ? _value.outboundDepartureAirport
          : outboundDepartureAirport // ignore: cast_nullable_to_non_nullable
              as String,
      outboundArrivalAirport: null == outboundArrivalAirport
          ? _value.outboundArrivalAirport
          : outboundArrivalAirport // ignore: cast_nullable_to_non_nullable
              as String,
      outboundAirline: null == outboundAirline
          ? _value.outboundAirline
          : outboundAirline // ignore: cast_nullable_to_non_nullable
              as String,
      outboundArrivalTime: null == outboundArrivalTime
          ? _value.outboundArrivalTime
          : outboundArrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String,
      isOceanView: null == isOceanView
          ? _value.isOceanView
          : isOceanView // ignore: cast_nullable_to_non_nullable
              as bool,
      roomType: null == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$_OfferCopyWith(_$_Offer value, $Res Function(_$_Offer) then) =
      __$$_OfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hotelid')
          int hotelId,
      @JsonKey(name: 'departuredate')
          DateTime departureDate,
      @JsonKey(name: 'returndate')
          DateTime returnDate,
      @JsonKey(name: 'countadults')
          int countAdults,
      @JsonKey(name: 'countchildren')
          int countChildren,
      int price,
      @JsonKey(name: 'inbounddepartureairport')
          String inboundDepartureAirport,
      @JsonKey(name: 'inboundarrivalairport')
          String inboundArrivalAirport,
      @JsonKey(name: 'inboundairline')
          String inboundAirline,
      @JsonKey(name: 'inboundarrivaldatetime')
          DateTime inboundArrivalTime,
      @JsonKey(name: 'outbounddepartureairport')
          String outboundDepartureAirport,
      @JsonKey(name: 'outboundarrivalairport')
          String outboundArrivalAirport,
      @JsonKey(name: 'outboundairline')
          String outboundAirline,
      @JsonKey(name: 'outboundarrivaldatetime')
          DateTime outboundArrivalTime,
      @JsonKey(name: 'mealtype')
          String mealType,
      @JsonKey(name: 'oceanview')
          bool isOceanView,
      @JsonKey(name: 'roomtype')
          String roomType});
}

/// @nodoc
class __$$_OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res, _$_Offer>
    implements _$$_OfferCopyWith<$Res> {
  __$$_OfferCopyWithImpl(_$_Offer _value, $Res Function(_$_Offer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? departureDate = null,
    Object? returnDate = null,
    Object? countAdults = null,
    Object? countChildren = null,
    Object? price = null,
    Object? inboundDepartureAirport = null,
    Object? inboundArrivalAirport = null,
    Object? inboundAirline = null,
    Object? inboundArrivalTime = null,
    Object? outboundDepartureAirport = null,
    Object? outboundArrivalAirport = null,
    Object? outboundAirline = null,
    Object? outboundArrivalTime = null,
    Object? mealType = null,
    Object? isOceanView = null,
    Object? roomType = null,
  }) {
    return _then(_$_Offer(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      countAdults: null == countAdults
          ? _value.countAdults
          : countAdults // ignore: cast_nullable_to_non_nullable
              as int,
      countChildren: null == countChildren
          ? _value.countChildren
          : countChildren // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      inboundDepartureAirport: null == inboundDepartureAirport
          ? _value.inboundDepartureAirport
          : inboundDepartureAirport // ignore: cast_nullable_to_non_nullable
              as String,
      inboundArrivalAirport: null == inboundArrivalAirport
          ? _value.inboundArrivalAirport
          : inboundArrivalAirport // ignore: cast_nullable_to_non_nullable
              as String,
      inboundAirline: null == inboundAirline
          ? _value.inboundAirline
          : inboundAirline // ignore: cast_nullable_to_non_nullable
              as String,
      inboundArrivalTime: null == inboundArrivalTime
          ? _value.inboundArrivalTime
          : inboundArrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      outboundDepartureAirport: null == outboundDepartureAirport
          ? _value.outboundDepartureAirport
          : outboundDepartureAirport // ignore: cast_nullable_to_non_nullable
              as String,
      outboundArrivalAirport: null == outboundArrivalAirport
          ? _value.outboundArrivalAirport
          : outboundArrivalAirport // ignore: cast_nullable_to_non_nullable
              as String,
      outboundAirline: null == outboundAirline
          ? _value.outboundAirline
          : outboundAirline // ignore: cast_nullable_to_non_nullable
              as String,
      outboundArrivalTime: null == outboundArrivalTime
          ? _value.outboundArrivalTime
          : outboundArrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String,
      isOceanView: null == isOceanView
          ? _value.isOceanView
          : isOceanView // ignore: cast_nullable_to_non_nullable
              as bool,
      roomType: null == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Offer extends _Offer {
  const _$_Offer(
      {@JsonKey(name: 'hotelid')
          required this.hotelId,
      @JsonKey(name: 'departuredate')
          required this.departureDate,
      @JsonKey(name: 'returndate')
          required this.returnDate,
      @JsonKey(name: 'countadults')
          required this.countAdults,
      @JsonKey(name: 'countchildren')
          required this.countChildren,
      required this.price,
      @JsonKey(name: 'inbounddepartureairport')
          required this.inboundDepartureAirport,
      @JsonKey(name: 'inboundarrivalairport')
          required this.inboundArrivalAirport,
      @JsonKey(name: 'inboundairline')
          required this.inboundAirline,
      @JsonKey(name: 'inboundarrivaldatetime')
          required this.inboundArrivalTime,
      @JsonKey(name: 'outbounddepartureairport')
          required this.outboundDepartureAirport,
      @JsonKey(name: 'outboundarrivalairport')
          required this.outboundArrivalAirport,
      @JsonKey(name: 'outboundairline')
          required this.outboundAirline,
      @JsonKey(name: 'outboundarrivaldatetime')
          required this.outboundArrivalTime,
      @JsonKey(name: 'mealtype')
          required this.mealType,
      @JsonKey(name: 'oceanview')
          required this.isOceanView,
      @JsonKey(name: 'roomtype')
          required this.roomType})
      : super._();

  factory _$_Offer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferFromJson(json);

  @override
  @JsonKey(name: 'hotelid')
  final int hotelId;
  @override
  @JsonKey(name: 'departuredate')
  final DateTime departureDate;
  @override
  @JsonKey(name: 'returndate')
  final DateTime returnDate;
  @override
  @JsonKey(name: 'countadults')
  final int countAdults;
  @override
  @JsonKey(name: 'countchildren')
  final int countChildren;
  @override
  final int price;
  @override
  @JsonKey(name: 'inbounddepartureairport')
  final String inboundDepartureAirport;
  @override
  @JsonKey(name: 'inboundarrivalairport')
  final String inboundArrivalAirport;
  @override
  @JsonKey(name: 'inboundairline')
  final String inboundAirline;
  @override
  @JsonKey(name: 'inboundarrivaldatetime')
  final DateTime inboundArrivalTime;
  @override
  @JsonKey(name: 'outbounddepartureairport')
  final String outboundDepartureAirport;
  @override
  @JsonKey(name: 'outboundarrivalairport')
  final String outboundArrivalAirport;
  @override
  @JsonKey(name: 'outboundairline')
  final String outboundAirline;
  @override
  @JsonKey(name: 'outboundarrivaldatetime')
  final DateTime outboundArrivalTime;
  @override
  @JsonKey(name: 'mealtype')
  final String mealType;
  @override
  @JsonKey(name: 'oceanview')
  final bool isOceanView;
  @override
  @JsonKey(name: 'roomtype')
  final String roomType;

  @override
  String toString() {
    return 'Offer(hotelId: $hotelId, departureDate: $departureDate, returnDate: $returnDate, countAdults: $countAdults, countChildren: $countChildren, price: $price, inboundDepartureAirport: $inboundDepartureAirport, inboundArrivalAirport: $inboundArrivalAirport, inboundAirline: $inboundAirline, inboundArrivalTime: $inboundArrivalTime, outboundDepartureAirport: $outboundDepartureAirport, outboundArrivalAirport: $outboundArrivalAirport, outboundAirline: $outboundAirline, outboundArrivalTime: $outboundArrivalTime, mealType: $mealType, isOceanView: $isOceanView, roomType: $roomType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Offer &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.countAdults, countAdults) ||
                other.countAdults == countAdults) &&
            (identical(other.countChildren, countChildren) ||
                other.countChildren == countChildren) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(
                    other.inboundDepartureAirport, inboundDepartureAirport) ||
                other.inboundDepartureAirport == inboundDepartureAirport) &&
            (identical(other.inboundArrivalAirport, inboundArrivalAirport) ||
                other.inboundArrivalAirport == inboundArrivalAirport) &&
            (identical(other.inboundAirline, inboundAirline) ||
                other.inboundAirline == inboundAirline) &&
            (identical(other.inboundArrivalTime, inboundArrivalTime) ||
                other.inboundArrivalTime == inboundArrivalTime) &&
            (identical(
                    other.outboundDepartureAirport, outboundDepartureAirport) ||
                other.outboundDepartureAirport == outboundDepartureAirport) &&
            (identical(other.outboundArrivalAirport, outboundArrivalAirport) ||
                other.outboundArrivalAirport == outboundArrivalAirport) &&
            (identical(other.outboundAirline, outboundAirline) ||
                other.outboundAirline == outboundAirline) &&
            (identical(other.outboundArrivalTime, outboundArrivalTime) ||
                other.outboundArrivalTime == outboundArrivalTime) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.isOceanView, isOceanView) ||
                other.isOceanView == isOceanView) &&
            (identical(other.roomType, roomType) ||
                other.roomType == roomType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hotelId,
      departureDate,
      returnDate,
      countAdults,
      countChildren,
      price,
      inboundDepartureAirport,
      inboundArrivalAirport,
      inboundAirline,
      inboundArrivalTime,
      outboundDepartureAirport,
      outboundArrivalAirport,
      outboundAirline,
      outboundArrivalTime,
      mealType,
      isOceanView,
      roomType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      __$$_OfferCopyWithImpl<_$_Offer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferToJson(
      this,
    );
  }
}

abstract class _Offer extends Offer {
  const factory _Offer(
      {@JsonKey(name: 'hotelid')
          required final int hotelId,
      @JsonKey(name: 'departuredate')
          required final DateTime departureDate,
      @JsonKey(name: 'returndate')
          required final DateTime returnDate,
      @JsonKey(name: 'countadults')
          required final int countAdults,
      @JsonKey(name: 'countchildren')
          required final int countChildren,
      required final int price,
      @JsonKey(name: 'inbounddepartureairport')
          required final String inboundDepartureAirport,
      @JsonKey(name: 'inboundarrivalairport')
          required final String inboundArrivalAirport,
      @JsonKey(name: 'inboundairline')
          required final String inboundAirline,
      @JsonKey(name: 'inboundarrivaldatetime')
          required final DateTime inboundArrivalTime,
      @JsonKey(name: 'outbounddepartureairport')
          required final String outboundDepartureAirport,
      @JsonKey(name: 'outboundarrivalairport')
          required final String outboundArrivalAirport,
      @JsonKey(name: 'outboundairline')
          required final String outboundAirline,
      @JsonKey(name: 'outboundarrivaldatetime')
          required final DateTime outboundArrivalTime,
      @JsonKey(name: 'mealtype')
          required final String mealType,
      @JsonKey(name: 'oceanview')
          required final bool isOceanView,
      @JsonKey(name: 'roomtype')
          required final String roomType}) = _$_Offer;
  const _Offer._() : super._();

  factory _Offer.fromJson(Map<String, dynamic> json) = _$_Offer.fromJson;

  @override
  @JsonKey(name: 'hotelid')
  int get hotelId;
  @override
  @JsonKey(name: 'departuredate')
  DateTime get departureDate;
  @override
  @JsonKey(name: 'returndate')
  DateTime get returnDate;
  @override
  @JsonKey(name: 'countadults')
  int get countAdults;
  @override
  @JsonKey(name: 'countchildren')
  int get countChildren;
  @override
  int get price;
  @override
  @JsonKey(name: 'inbounddepartureairport')
  String get inboundDepartureAirport;
  @override
  @JsonKey(name: 'inboundarrivalairport')
  String get inboundArrivalAirport;
  @override
  @JsonKey(name: 'inboundairline')
  String get inboundAirline;
  @override
  @JsonKey(name: 'inboundarrivaldatetime')
  DateTime get inboundArrivalTime;
  @override
  @JsonKey(name: 'outbounddepartureairport')
  String get outboundDepartureAirport;
  @override
  @JsonKey(name: 'outboundarrivalairport')
  String get outboundArrivalAirport;
  @override
  @JsonKey(name: 'outboundairline')
  String get outboundAirline;
  @override
  @JsonKey(name: 'outboundarrivaldatetime')
  DateTime get outboundArrivalTime;
  @override
  @JsonKey(name: 'mealtype')
  String get mealType;
  @override
  @JsonKey(name: 'oceanview')
  bool get isOceanView;
  @override
  @JsonKey(name: 'roomtype')
  String get roomType;
  @override
  @JsonKey(ignore: true)
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      throw _privateConstructorUsedError;
}
