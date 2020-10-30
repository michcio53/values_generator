// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'snackbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SnackbarEventTearOff {
  const _$SnackbarEventTearOff();

// ignore: unused_element
  _FailureOccured failureOccured(Failure failure) {
    return _FailureOccured(
      failure,
    );
  }

// ignore: unused_element
  _PositiveShowed positive(String message) {
    return _PositiveShowed(
      message,
    );
  }

// ignore: unused_element
  _NegativeShowed negative(String message) {
    return _NegativeShowed(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SnackbarEvent = _$SnackbarEventTearOff();

/// @nodoc
mixin _$SnackbarEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failureOccured(Failure failure),
    @required Result positive(String message),
    @required Result negative(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failureOccured(Failure failure),
    Result positive(String message),
    Result negative(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failureOccured(_FailureOccured value),
    @required Result positive(_PositiveShowed value),
    @required Result negative(_NegativeShowed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failureOccured(_FailureOccured value),
    Result positive(_PositiveShowed value),
    Result negative(_NegativeShowed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SnackbarEventCopyWith<$Res> {
  factory $SnackbarEventCopyWith(
          SnackbarEvent value, $Res Function(SnackbarEvent) then) =
      _$SnackbarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SnackbarEventCopyWithImpl<$Res>
    implements $SnackbarEventCopyWith<$Res> {
  _$SnackbarEventCopyWithImpl(this._value, this._then);

  final SnackbarEvent _value;
  // ignore: unused_field
  final $Res Function(SnackbarEvent) _then;
}

/// @nodoc
abstract class _$FailureOccuredCopyWith<$Res> {
  factory _$FailureOccuredCopyWith(
          _FailureOccured value, $Res Function(_FailureOccured) then) =
      __$FailureOccuredCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailureOccuredCopyWithImpl<$Res>
    extends _$SnackbarEventCopyWithImpl<$Res>
    implements _$FailureOccuredCopyWith<$Res> {
  __$FailureOccuredCopyWithImpl(
      _FailureOccured _value, $Res Function(_FailureOccured) _then)
      : super(_value, (v) => _then(v as _FailureOccured));

  @override
  _FailureOccured get _value => super._value as _FailureOccured;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_FailureOccured(
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_FailureOccured implements _FailureOccured {
  const _$_FailureOccured(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SnackbarEvent.failureOccured(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureOccured &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FailureOccuredCopyWith<_FailureOccured> get copyWith =>
      __$FailureOccuredCopyWithImpl<_FailureOccured>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failureOccured(Failure failure),
    @required Result positive(String message),
    @required Result negative(String message),
  }) {
    assert(failureOccured != null);
    assert(positive != null);
    assert(negative != null);
    return failureOccured(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failureOccured(Failure failure),
    Result positive(String message),
    Result negative(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failureOccured != null) {
      return failureOccured(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failureOccured(_FailureOccured value),
    @required Result positive(_PositiveShowed value),
    @required Result negative(_NegativeShowed value),
  }) {
    assert(failureOccured != null);
    assert(positive != null);
    assert(negative != null);
    return failureOccured(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failureOccured(_FailureOccured value),
    Result positive(_PositiveShowed value),
    Result negative(_NegativeShowed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failureOccured != null) {
      return failureOccured(this);
    }
    return orElse();
  }
}

abstract class _FailureOccured implements SnackbarEvent {
  const factory _FailureOccured(Failure failure) = _$_FailureOccured;

  Failure get failure;
  _$FailureOccuredCopyWith<_FailureOccured> get copyWith;
}

/// @nodoc
abstract class _$PositiveShowedCopyWith<$Res> {
  factory _$PositiveShowedCopyWith(
          _PositiveShowed value, $Res Function(_PositiveShowed) then) =
      __$PositiveShowedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$PositiveShowedCopyWithImpl<$Res>
    extends _$SnackbarEventCopyWithImpl<$Res>
    implements _$PositiveShowedCopyWith<$Res> {
  __$PositiveShowedCopyWithImpl(
      _PositiveShowed _value, $Res Function(_PositiveShowed) _then)
      : super(_value, (v) => _then(v as _PositiveShowed));

  @override
  _PositiveShowed get _value => super._value as _PositiveShowed;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_PositiveShowed(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_PositiveShowed implements _PositiveShowed {
  const _$_PositiveShowed(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SnackbarEvent.positive(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PositiveShowed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$PositiveShowedCopyWith<_PositiveShowed> get copyWith =>
      __$PositiveShowedCopyWithImpl<_PositiveShowed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failureOccured(Failure failure),
    @required Result positive(String message),
    @required Result negative(String message),
  }) {
    assert(failureOccured != null);
    assert(positive != null);
    assert(negative != null);
    return positive(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failureOccured(Failure failure),
    Result positive(String message),
    Result negative(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (positive != null) {
      return positive(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failureOccured(_FailureOccured value),
    @required Result positive(_PositiveShowed value),
    @required Result negative(_NegativeShowed value),
  }) {
    assert(failureOccured != null);
    assert(positive != null);
    assert(negative != null);
    return positive(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failureOccured(_FailureOccured value),
    Result positive(_PositiveShowed value),
    Result negative(_NegativeShowed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (positive != null) {
      return positive(this);
    }
    return orElse();
  }
}

abstract class _PositiveShowed implements SnackbarEvent {
  const factory _PositiveShowed(String message) = _$_PositiveShowed;

  String get message;
  _$PositiveShowedCopyWith<_PositiveShowed> get copyWith;
}

/// @nodoc
abstract class _$NegativeShowedCopyWith<$Res> {
  factory _$NegativeShowedCopyWith(
          _NegativeShowed value, $Res Function(_NegativeShowed) then) =
      __$NegativeShowedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$NegativeShowedCopyWithImpl<$Res>
    extends _$SnackbarEventCopyWithImpl<$Res>
    implements _$NegativeShowedCopyWith<$Res> {
  __$NegativeShowedCopyWithImpl(
      _NegativeShowed _value, $Res Function(_NegativeShowed) _then)
      : super(_value, (v) => _then(v as _NegativeShowed));

  @override
  _NegativeShowed get _value => super._value as _NegativeShowed;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_NegativeShowed(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_NegativeShowed implements _NegativeShowed {
  const _$_NegativeShowed(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SnackbarEvent.negative(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NegativeShowed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$NegativeShowedCopyWith<_NegativeShowed> get copyWith =>
      __$NegativeShowedCopyWithImpl<_NegativeShowed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result failureOccured(Failure failure),
    @required Result positive(String message),
    @required Result negative(String message),
  }) {
    assert(failureOccured != null);
    assert(positive != null);
    assert(negative != null);
    return negative(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result failureOccured(Failure failure),
    Result positive(String message),
    Result negative(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (negative != null) {
      return negative(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result failureOccured(_FailureOccured value),
    @required Result positive(_PositiveShowed value),
    @required Result negative(_NegativeShowed value),
  }) {
    assert(failureOccured != null);
    assert(positive != null);
    assert(negative != null);
    return negative(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result failureOccured(_FailureOccured value),
    Result positive(_PositiveShowed value),
    Result negative(_NegativeShowed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (negative != null) {
      return negative(this);
    }
    return orElse();
  }
}

abstract class _NegativeShowed implements SnackbarEvent {
  const factory _NegativeShowed(String message) = _$_NegativeShowed;

  String get message;
  _$NegativeShowedCopyWith<_NegativeShowed> get copyWith;
}

/// @nodoc
class _$SnackbarStateTearOff {
  const _$SnackbarStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Visible visible({@required String message, @required Color color}) {
    return _Visible(
      message: message,
      color: color,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SnackbarState = _$SnackbarStateTearOff();

/// @nodoc
mixin _$SnackbarState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result visible(String message, Color color),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result visible(String message, Color color),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result visible(_Visible value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result visible(_Visible value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SnackbarStateCopyWith<$Res> {
  factory $SnackbarStateCopyWith(
          SnackbarState value, $Res Function(SnackbarState) then) =
      _$SnackbarStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SnackbarStateCopyWithImpl<$Res>
    implements $SnackbarStateCopyWith<$Res> {
  _$SnackbarStateCopyWithImpl(this._value, this._then);

  final SnackbarState _value;
  // ignore: unused_field
  final $Res Function(SnackbarState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SnackbarStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SnackbarState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result visible(String message, Color color),
  }) {
    assert(initial != null);
    assert(visible != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result visible(String message, Color color),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result visible(_Visible value),
  }) {
    assert(initial != null);
    assert(visible != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result visible(_Visible value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SnackbarState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$VisibleCopyWith<$Res> {
  factory _$VisibleCopyWith(_Visible value, $Res Function(_Visible) then) =
      __$VisibleCopyWithImpl<$Res>;
  $Res call({String message, Color color});
}

/// @nodoc
class __$VisibleCopyWithImpl<$Res> extends _$SnackbarStateCopyWithImpl<$Res>
    implements _$VisibleCopyWith<$Res> {
  __$VisibleCopyWithImpl(_Visible _value, $Res Function(_Visible) _then)
      : super(_value, (v) => _then(v as _Visible));

  @override
  _Visible get _value => super._value as _Visible;

  @override
  $Res call({
    Object message = freezed,
    Object color = freezed,
  }) {
    return _then(_Visible(
      message: message == freezed ? _value.message : message as String,
      color: color == freezed ? _value.color : color as Color,
    ));
  }
}

/// @nodoc
class _$_Visible implements _Visible {
  const _$_Visible({@required this.message, @required this.color})
      : assert(message != null),
        assert(color != null);

  @override
  final String message;
  @override
  final Color color;

  @override
  String toString() {
    return 'SnackbarState.visible(message: $message, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Visible &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(color);

  @override
  _$VisibleCopyWith<_Visible> get copyWith =>
      __$VisibleCopyWithImpl<_Visible>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result visible(String message, Color color),
  }) {
    assert(initial != null);
    assert(visible != null);
    return visible(message, color);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result visible(String message, Color color),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (visible != null) {
      return visible(message, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result visible(_Visible value),
  }) {
    assert(initial != null);
    assert(visible != null);
    return visible(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result visible(_Visible value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (visible != null) {
      return visible(this);
    }
    return orElse();
  }
}

abstract class _Visible implements SnackbarState {
  const factory _Visible({@required String message, @required Color color}) =
      _$_Visible;

  String get message;
  Color get color;
  _$VisibleCopyWith<_Visible> get copyWith;
}
