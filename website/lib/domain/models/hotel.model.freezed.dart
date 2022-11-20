// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotel.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Hotel.fromJson(json);
}

/// @nodoc
mixin _$Hotel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotelstars')
  double get hotelStars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      @JsonKey(name: 'hotelstars') double hotelStars});
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? hotelStars = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      hotelStars: null == hotelStars
          ? _value.hotelStars
          : hotelStars // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HotelCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$_HotelCopyWith(_$_Hotel value, $Res Function(_$_Hotel) then) =
      __$$_HotelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      @JsonKey(name: 'hotelstars') double hotelStars});
}

/// @nodoc
class __$$_HotelCopyWithImpl<$Res> extends _$HotelCopyWithImpl<$Res, _$_Hotel>
    implements _$$_HotelCopyWith<$Res> {
  __$$_HotelCopyWithImpl(_$_Hotel _value, $Res Function(_$_Hotel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? hotelStars = null,
  }) {
    return _then(_$_Hotel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      hotelStars: null == hotelStars
          ? _value.hotelStars
          : hotelStars // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hotel extends _Hotel {
  const _$_Hotel(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: 'hotelstars') required this.hotelStars})
      : super._();

  factory _$_Hotel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @JsonKey(name: 'hotelstars')
  final double hotelStars;

  @override
  String toString() {
    return 'Hotel(id: $id, name: $name, latitude: $latitude, longitude: $longitude, hotelStars: $hotelStars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hotel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.hotelStars, hotelStars) ||
                other.hotelStars == hotelStars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, latitude, longitude, hotelStars);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      __$$_HotelCopyWithImpl<_$_Hotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelToJson(
      this,
    );
  }
}

abstract class _Hotel extends Hotel {
  const factory _Hotel(
          {required final int id,
          required final String name,
          required final double latitude,
          required final double longitude,
          @JsonKey(name: 'hotelstars') required final double hotelStars}) =
      _$_Hotel;
  const _Hotel._() : super._();

  factory _Hotel.fromJson(Map<String, dynamic> json) = _$_Hotel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(name: 'hotelstars')
  double get hotelStars;
  @override
  @JsonKey(ignore: true)
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      throw _privateConstructorUsedError;
}
