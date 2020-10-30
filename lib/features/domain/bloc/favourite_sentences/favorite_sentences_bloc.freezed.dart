// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorite_sentences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoriteSentencesEventTearOff {
  const _$FavoriteSentencesEventTearOff();

// ignore: unused_element
  _Initiated initiated() {
    return const _Initiated();
  }

// ignore: unused_element
  _Deleted deleted(int index) {
    return _Deleted(
      index,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavoriteSentencesEvent = _$FavoriteSentencesEventTearOff();

/// @nodoc
mixin _$FavoriteSentencesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initiated(),
    @required Result deleted(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initiated(),
    Result deleted(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initiated(_Initiated value),
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initiated(_Initiated value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FavoriteSentencesEventCopyWith<$Res> {
  factory $FavoriteSentencesEventCopyWith(FavoriteSentencesEvent value,
          $Res Function(FavoriteSentencesEvent) then) =
      _$FavoriteSentencesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteSentencesEventCopyWithImpl<$Res>
    implements $FavoriteSentencesEventCopyWith<$Res> {
  _$FavoriteSentencesEventCopyWithImpl(this._value, this._then);

  final FavoriteSentencesEvent _value;
  // ignore: unused_field
  final $Res Function(FavoriteSentencesEvent) _then;
}

/// @nodoc
abstract class _$InitiatedCopyWith<$Res> {
  factory _$InitiatedCopyWith(
          _Initiated value, $Res Function(_Initiated) then) =
      __$InitiatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitiatedCopyWithImpl<$Res>
    extends _$FavoriteSentencesEventCopyWithImpl<$Res>
    implements _$InitiatedCopyWith<$Res> {
  __$InitiatedCopyWithImpl(_Initiated _value, $Res Function(_Initiated) _then)
      : super(_value, (v) => _then(v as _Initiated));

  @override
  _Initiated get _value => super._value as _Initiated;
}

/// @nodoc
class _$_Initiated implements _Initiated {
  const _$_Initiated();

  @override
  String toString() {
    return 'FavoriteSentencesEvent.initiated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initiated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initiated(),
    @required Result deleted(int index),
  }) {
    assert(initiated != null);
    assert(deleted != null);
    return initiated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initiated(),
    Result deleted(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initiated != null) {
      return initiated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initiated(_Initiated value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initiated != null);
    assert(deleted != null);
    return initiated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initiated(_Initiated value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initiated != null) {
      return initiated(this);
    }
    return orElse();
  }
}

abstract class _Initiated implements FavoriteSentencesEvent {
  const factory _Initiated() = _$_Initiated;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$FavoriteSentencesEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_Deleted(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'FavoriteSentencesEvent.deleted(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initiated(),
    @required Result deleted(int index),
  }) {
    assert(initiated != null);
    assert(deleted != null);
    return deleted(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initiated(),
    Result deleted(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initiated(_Initiated value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initiated != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initiated(_Initiated value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements FavoriteSentencesEvent {
  const factory _Deleted(int index) = _$_Deleted;

  int get index;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$FavoriteSentencesStateTearOff {
  const _$FavoriteSentencesStateTearOff();

// ignore: unused_element
  _InProgress inProgress() {
    return const _InProgress();
  }

// ignore: unused_element
  _Success success(List<Sentence> favoriteSentences) {
    return _Success(
      favoriteSentences,
    );
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
const $FavoriteSentencesState = _$FavoriteSentencesStateTearOff();

/// @nodoc
mixin _$FavoriteSentencesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result success(List<Sentence> favoriteSentences),
    @required Result failure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result success(List<Sentence> favoriteSentences),
    Result failure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inProgress(_InProgress value),
    @required Result success(_Success value),
    @required Result failure(_Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_InProgress value),
    Result success(_Success value),
    Result failure(_Failure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FavoriteSentencesStateCopyWith<$Res> {
  factory $FavoriteSentencesStateCopyWith(FavoriteSentencesState value,
          $Res Function(FavoriteSentencesState) then) =
      _$FavoriteSentencesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteSentencesStateCopyWithImpl<$Res>
    implements $FavoriteSentencesStateCopyWith<$Res> {
  _$FavoriteSentencesStateCopyWithImpl(this._value, this._then);

  final FavoriteSentencesState _value;
  // ignore: unused_field
  final $Res Function(FavoriteSentencesState) _then;
}

/// @nodoc
abstract class _$InProgressCopyWith<$Res> {
  factory _$InProgressCopyWith(
          _InProgress value, $Res Function(_InProgress) then) =
      __$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressCopyWithImpl<$Res>
    extends _$FavoriteSentencesStateCopyWithImpl<$Res>
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
    return 'FavoriteSentencesState.inProgress()';
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
    @required Result success(List<Sentence> favoriteSentences),
    @required Result failure(String message),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result success(List<Sentence> favoriteSentences),
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
    @required Result success(_Success value),
    @required Result failure(_Failure value),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_InProgress value),
    Result success(_Success value),
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

abstract class _InProgress implements FavoriteSentencesState {
  const factory _InProgress() = _$_InProgress;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<Sentence> favoriteSentences});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$FavoriteSentencesStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object favoriteSentences = freezed,
  }) {
    return _then(_Success(
      favoriteSentences == freezed
          ? _value.favoriteSentences
          : favoriteSentences as List<Sentence>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.favoriteSentences) : assert(favoriteSentences != null);

  @override
  final List<Sentence> favoriteSentences;

  @override
  String toString() {
    return 'FavoriteSentencesState.success(favoriteSentences: $favoriteSentences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.favoriteSentences, favoriteSentences) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteSentences, favoriteSentences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favoriteSentences);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result success(List<Sentence> favoriteSentences),
    @required Result failure(String message),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return success(favoriteSentences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result success(List<Sentence> favoriteSentences),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(favoriteSentences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inProgress(_InProgress value),
    @required Result success(_Success value),
    @required Result failure(_Failure value),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_InProgress value),
    Result success(_Success value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FavoriteSentencesState {
  const factory _Success(List<Sentence> favoriteSentences) = _$_Success;

  List<Sentence> get favoriteSentences;
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$FavoriteSentencesStateCopyWithImpl<$Res>
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
    return 'FavoriteSentencesState.failure(message: $message)';
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
    @required Result success(List<Sentence> favoriteSentences),
    @required Result failure(String message),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result success(List<Sentence> favoriteSentences),
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
    @required Result success(_Success value),
    @required Result failure(_Failure value),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_InProgress value),
    Result success(_Success value),
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

abstract class _Failure implements FavoriteSentencesState {
  const factory _Failure(String message) = _$_Failure;

  String get message;
  _$FailureCopyWith<_Failure> get copyWith;
}
