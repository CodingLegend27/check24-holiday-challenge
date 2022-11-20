// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search.repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchParameters {
  int get duration => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get startingAirport => throw _privateConstructorUsedError;
  String get destinationAirport => throw _privateConstructorUsedError;
  int get countAdults => throw _privateConstructorUsedError;
  int get countChildren => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchParametersCopyWith<SearchParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParametersCopyWith<$Res> {
  factory $SearchParametersCopyWith(
          SearchParameters value, $Res Function(SearchParameters) then) =
      _$SearchParametersCopyWithImpl<$Res, SearchParameters>;
  @useResult
  $Res call(
      {int duration,
      DateTime startDate,
      DateTime endDate,
      String startingAirport,
      String destinationAirport,
      int countAdults,
      int countChildren});
}

/// @nodoc
class _$SearchParametersCopyWithImpl<$Res, $Val extends SearchParameters>
    implements $SearchParametersCopyWith<$Res> {
  _$SearchParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? startingAirport = null,
    Object? destinationAirport = null,
    Object? countAdults = null,
    Object? countChildren = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startingAirport: null == startingAirport
          ? _value.startingAirport
          : startingAirport // ignore: cast_nullable_to_non_nullable
              as String,
      destinationAirport: null == destinationAirport
          ? _value.destinationAirport
          : destinationAirport // ignore: cast_nullable_to_non_nullable
              as String,
      countAdults: null == countAdults
          ? _value.countAdults
          : countAdults // ignore: cast_nullable_to_non_nullable
              as int,
      countChildren: null == countChildren
          ? _value.countChildren
          : countChildren // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchParametersCopyWith<$Res>
    implements $SearchParametersCopyWith<$Res> {
  factory _$$_SearchParametersCopyWith(
          _$_SearchParameters value, $Res Function(_$_SearchParameters) then) =
      __$$_SearchParametersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int duration,
      DateTime startDate,
      DateTime endDate,
      String startingAirport,
      String destinationAirport,
      int countAdults,
      int countChildren});
}

/// @nodoc
class __$$_SearchParametersCopyWithImpl<$Res>
    extends _$SearchParametersCopyWithImpl<$Res, _$_SearchParameters>
    implements _$$_SearchParametersCopyWith<$Res> {
  __$$_SearchParametersCopyWithImpl(
      _$_SearchParameters _value, $Res Function(_$_SearchParameters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? startingAirport = null,
    Object? destinationAirport = null,
    Object? countAdults = null,
    Object? countChildren = null,
  }) {
    return _then(_$_SearchParameters(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startingAirport: null == startingAirport
          ? _value.startingAirport
          : startingAirport // ignore: cast_nullable_to_non_nullable
              as String,
      destinationAirport: null == destinationAirport
          ? _value.destinationAirport
          : destinationAirport // ignore: cast_nullable_to_non_nullable
              as String,
      countAdults: null == countAdults
          ? _value.countAdults
          : countAdults // ignore: cast_nullable_to_non_nullable
              as int,
      countChildren: null == countChildren
          ? _value.countChildren
          : countChildren // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchParameters implements _SearchParameters {
  const _$_SearchParameters(
      {required this.duration,
      required this.startDate,
      required this.endDate,
      required this.startingAirport,
      required this.destinationAirport,
      required this.countAdults,
      required this.countChildren});

  @override
  final int duration;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String startingAirport;
  @override
  final String destinationAirport;
  @override
  final int countAdults;
  @override
  final int countChildren;

  @override
  String toString() {
    return 'SearchParameters(duration: $duration, startDate: $startDate, endDate: $endDate, startingAirport: $startingAirport, destinationAirport: $destinationAirport, countAdults: $countAdults, countChildren: $countChildren)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchParameters &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.startingAirport, startingAirport) ||
                other.startingAirport == startingAirport) &&
            (identical(other.destinationAirport, destinationAirport) ||
                other.destinationAirport == destinationAirport) &&
            (identical(other.countAdults, countAdults) ||
                other.countAdults == countAdults) &&
            (identical(other.countChildren, countChildren) ||
                other.countChildren == countChildren));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, startDate, endDate,
      startingAirport, destinationAirport, countAdults, countChildren);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchParametersCopyWith<_$_SearchParameters> get copyWith =>
      __$$_SearchParametersCopyWithImpl<_$_SearchParameters>(this, _$identity);
}

abstract class _SearchParameters implements SearchParameters {
  const factory _SearchParameters(
      {required final int duration,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String startingAirport,
      required final String destinationAirport,
      required final int countAdults,
      required final int countChildren}) = _$_SearchParameters;

  @override
  int get duration;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get startingAirport;
  @override
  String get destinationAirport;
  @override
  int get countAdults;
  @override
  int get countChildren;
  @override
  @JsonKey(ignore: true)
  _$$_SearchParametersCopyWith<_$_SearchParameters> get copyWith =>
      throw _privateConstructorUsedError;
}
