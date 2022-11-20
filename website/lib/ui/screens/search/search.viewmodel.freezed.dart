// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search.viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Offer> offers, List<Hotel> hotels)
        searchResults,
    required TResult Function(Hotel hotel, List<Offer> offers) hotelOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult? Function(Hotel hotel, List<Offer> offers)? hotelOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult Function(Hotel hotel, List<Offer> offers)? hotelOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_HotelOffers value) hotelOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_HotelOffers value)? hotelOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_HotelOffers value)? hotelOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Offer> offers, List<Hotel> hotels)
        searchResults,
    required TResult Function(Hotel hotel, List<Offer> offers) hotelOffers,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult? Function(Hotel hotel, List<Offer> offers)? hotelOffers,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult Function(Hotel hotel, List<Offer> offers)? hotelOffers,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_HotelOffers value) hotelOffers,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_HotelOffers value)? hotelOffers,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_HotelOffers value)? hotelOffers,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Offer> offers, List<Hotel> hotels)
        searchResults,
    required TResult Function(Hotel hotel, List<Offer> offers) hotelOffers,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult? Function(Hotel hotel, List<Offer> offers)? hotelOffers,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult Function(Hotel hotel, List<Offer> offers)? hotelOffers,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_HotelOffers value) hotelOffers,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_HotelOffers value)? hotelOffers,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_HotelOffers value)? hotelOffers,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'SearchState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Offer> offers, List<Hotel> hotels)
        searchResults,
    required TResult Function(Hotel hotel, List<Offer> offers) hotelOffers,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult? Function(Hotel hotel, List<Offer> offers)? hotelOffers,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult Function(Hotel hotel, List<Offer> offers)? hotelOffers,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_HotelOffers value) hotelOffers,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_HotelOffers value)? hotelOffers,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_HotelOffers value)? hotelOffers,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SearchState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_SearchResultsCopyWith<$Res> {
  factory _$$_SearchResultsCopyWith(
          _$_SearchResults value, $Res Function(_$_SearchResults) then) =
      __$$_SearchResultsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Offer> offers, List<Hotel> hotels});
}

/// @nodoc
class __$$_SearchResultsCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchResults>
    implements _$$_SearchResultsCopyWith<$Res> {
  __$$_SearchResultsCopyWithImpl(
      _$_SearchResults _value, $Res Function(_$_SearchResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? hotels = null,
  }) {
    return _then(_$_SearchResults(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
    ));
  }
}

/// @nodoc

class _$_SearchResults implements _SearchResults {
  const _$_SearchResults(
      {required final List<Offer> offers, required final List<Hotel> hotels})
      : _offers = offers,
        _hotels = hotels;

  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  final List<Hotel> _hotels;
  @override
  List<Hotel> get hotels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  @override
  String toString() {
    return 'SearchState.searchResults(offers: $offers, hotels: $hotels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResults &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_offers),
      const DeepCollectionEquality().hash(_hotels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultsCopyWith<_$_SearchResults> get copyWith =>
      __$$_SearchResultsCopyWithImpl<_$_SearchResults>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Offer> offers, List<Hotel> hotels)
        searchResults,
    required TResult Function(Hotel hotel, List<Offer> offers) hotelOffers,
  }) {
    return searchResults(offers, hotels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult? Function(Hotel hotel, List<Offer> offers)? hotelOffers,
  }) {
    return searchResults?.call(offers, hotels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult Function(Hotel hotel, List<Offer> offers)? hotelOffers,
    required TResult orElse(),
  }) {
    if (searchResults != null) {
      return searchResults(offers, hotels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_HotelOffers value) hotelOffers,
  }) {
    return searchResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_HotelOffers value)? hotelOffers,
  }) {
    return searchResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_HotelOffers value)? hotelOffers,
    required TResult orElse(),
  }) {
    if (searchResults != null) {
      return searchResults(this);
    }
    return orElse();
  }
}

abstract class _SearchResults implements SearchState {
  const factory _SearchResults(
      {required final List<Offer> offers,
      required final List<Hotel> hotels}) = _$_SearchResults;

  List<Offer> get offers;
  List<Hotel> get hotels;
  @JsonKey(ignore: true)
  _$$_SearchResultsCopyWith<_$_SearchResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HotelOffersCopyWith<$Res> {
  factory _$$_HotelOffersCopyWith(
          _$_HotelOffers value, $Res Function(_$_HotelOffers) then) =
      __$$_HotelOffersCopyWithImpl<$Res>;
  @useResult
  $Res call({Hotel hotel, List<Offer> offers});

  $HotelCopyWith<$Res> get hotel;
}

/// @nodoc
class __$$_HotelOffersCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_HotelOffers>
    implements _$$_HotelOffersCopyWith<$Res> {
  __$$_HotelOffersCopyWithImpl(
      _$_HotelOffers _value, $Res Function(_$_HotelOffers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotel = null,
    Object? offers = null,
  }) {
    return _then(_$_HotelOffers(
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as Hotel,
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res> get hotel {
    return $HotelCopyWith<$Res>(_value.hotel, (value) {
      return _then(_value.copyWith(hotel: value));
    });
  }
}

/// @nodoc

class _$_HotelOffers implements _HotelOffers {
  const _$_HotelOffers({required this.hotel, required final List<Offer> offers})
      : _offers = offers;

  @override
  final Hotel hotel;
  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  String toString() {
    return 'SearchState.hotelOffers(hotel: $hotel, offers: $offers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelOffers &&
            (identical(other.hotel, hotel) || other.hotel == hotel) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, hotel, const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelOffersCopyWith<_$_HotelOffers> get copyWith =>
      __$$_HotelOffersCopyWithImpl<_$_HotelOffers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(List<Offer> offers, List<Hotel> hotels)
        searchResults,
    required TResult Function(Hotel hotel, List<Offer> offers) hotelOffers,
  }) {
    return hotelOffers(hotel, offers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult? Function(Hotel hotel, List<Offer> offers)? hotelOffers,
  }) {
    return hotelOffers?.call(hotel, offers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(List<Offer> offers, List<Hotel> hotels)? searchResults,
    TResult Function(Hotel hotel, List<Offer> offers)? hotelOffers,
    required TResult orElse(),
  }) {
    if (hotelOffers != null) {
      return hotelOffers(hotel, offers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchResults value) searchResults,
    required TResult Function(_HotelOffers value) hotelOffers,
  }) {
    return hotelOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchResults value)? searchResults,
    TResult? Function(_HotelOffers value)? hotelOffers,
  }) {
    return hotelOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SearchResults value)? searchResults,
    TResult Function(_HotelOffers value)? hotelOffers,
    required TResult orElse(),
  }) {
    if (hotelOffers != null) {
      return hotelOffers(this);
    }
    return orElse();
  }
}

abstract class _HotelOffers implements SearchState {
  const factory _HotelOffers(
      {required final Hotel hotel,
      required final List<Offer> offers}) = _$_HotelOffers;

  Hotel get hotel;
  List<Offer> get offers;
  @JsonKey(ignore: true)
  _$$_HotelOffersCopyWith<_$_HotelOffers> get copyWith =>
      throw _privateConstructorUsedError;
}
