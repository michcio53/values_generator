// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'launch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LaunchEventTearOff {
  const _$LaunchEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }
}

/// @nodoc
// ignore: unused_element
const $LaunchEvent = _$LaunchEventTearOff();

/// @nodoc
mixin _$LaunchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LaunchEventCopyWith<$Res> {
  factory $LaunchEventCopyWith(
          LaunchEvent value, $Res Function(LaunchEvent) then) =
      _$LaunchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LaunchEventCopyWithImpl<$Res> implements $LaunchEventCopyWith<$Res> {
  _$LaunchEventCopyWithImpl(this._value, this._then);

  final LaunchEvent _value;
  // ignore: unused_field
  final $Res Function(LaunchEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LaunchEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LaunchEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
  }) {
    assert(started != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
  }) {
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LaunchEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$LaunchStateTearOff {
  const _$LaunchStateTearOff();

// ignore: unused_element
  _InProgress inProgress() {
    return const _InProgress();
  }

// ignore: unused_element
  _Complete complete() {
    return const _Complete();
  }

// ignore: unused_element
  _Failure failure(String message) {
    return _Failure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LaunchState = _$LaunchStateTearOff();

/// @nodoc
mixin _$LaunchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result complete(),
    @required Result failure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result complete(),
    Result failure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inProgress(_InProgress value),
    @required Result complete(_Complete value),
    @required Result failure(_Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_InProgress value),
    Result complete(_Complete value),
    Result failure(_Failure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LaunchStateCopyWith<$Res> {
  factory $LaunchStateCopyWith(
          LaunchState value, $Res Function(LaunchState) then) =
      _$LaunchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LaunchStateCopyWithImpl<$Res> implements $LaunchStateCopyWith<$Res> {
  _$LaunchStateCopyWithImpl(this._value, this._then);

  final LaunchState _value;
  // ignore: unused_field
  final $Res Function(LaunchState) _then;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res> extends _$LaunchStateCopyWithImpl<$Res>
    implements _$InProgressCopyWith<$Res> {
  __$InProgressCopyWithImpl(
      _InProgress _value, $Res Function(_InProgress) _then)
      : super(_value, (v) => _then(v as _InProgress));

  @override
  _InProgress get _value => super._value as _InProgress;
}

/// @nodoc
class _$_InProgress implements _InProgress {
  const _$_InProgress();

  @override
  String toString() {
    return 'LaunchState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result complete(),
    @required Result failure(String message),
  }) {
    assert(inProgress != null);
    assert(complete != null);
    assert(failure != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result complete(),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inProgress(_InProgress value),
    @required Result complete(_Complete value),
    @required Result failure(_Failure value),
  }) {
    assert(inProgress != null);
    assert(complete != null);
    assert(failure != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_InProgress value),
    Result complete(_Complete value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements LaunchState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$CompleteCopyWith<$Res> {
  factory _$CompleteCopyWith(_Complete value, $Res Function(_Complete) then) =
      __$CompleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompleteCopyWithImpl<$Res> extends _$LaunchStateCopyWithImpl<$Res>
    implements _$CompleteCopyWith<$Res> {
  __$CompleteCopyWithImpl(_Complete _value, $Res Function(_Complete) _then)
      : super(_value, (v) => _then(v as _Complete));

  @override
  _Complete get _value => super._value as _Complete;
}

/// @nodoc
class _$_Complete implements _Complete {
  const _$_Complete();

  @override
  String toString() {
    return 'LaunchState.complete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Complete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result complete(),
    @required Result failure(String message),
  }) {
    assert(inProgress != null);
    assert(complete != null);
    assert(failure != null);
    return complete();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result complete(),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inProgress(_InProgress value),
    @required Result complete(_Complete value),
    @required Result failure(_Failure value),
  }) {
    assert(inProgress != null);
    assert(complete != null);
    assert(failure != null);
    return complete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_InProgress value),
    Result complete(_Complete value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete implements LaunchState {
  const factory _Complete() = _$_Complete;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$LaunchStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Failure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'LaunchState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result complete(),
    @required Result failure(String message),
  }) {
    assert(inProgress != null);
    assert(complete != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result complete(),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inProgress(_InProgress value),
    @required Result complete(_Complete value),
    @required Result failure(_Failure value),
  }) {
    assert(inProgress != null);
    assert(complete != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_InProgress value),
    Result complete(_Complete value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LaunchState {
  const factory _Failure(String message) = _$_Failure;

  String get message;
  _$FailureCopyWith<_Failure> get copyWith;
}
