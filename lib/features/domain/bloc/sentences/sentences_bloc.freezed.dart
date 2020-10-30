// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sentences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SentencesEventTearOff {
  const _$SentencesEventTearOff();

// ignore: unused_element
  _Initiated initiated() {
    return const _Initiated();
  }

// ignore: unused_element
  _Updated updated(int index) {
    return _Updated(
      index,
    );
  }

// ignore: unused_element
  _Liked liked() {
    return const _Liked();
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
const $SentencesEvent = _$SentencesEventTearOff();

/// @nodoc
mixin _$SentencesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initiated(),
    @required Result updated(int index),
    @required Result liked(),
    @required Result deleted(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initiated(),
    Result updated(int index),
    Result liked(),
    Result deleted(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initiated(_Initiated value),
    @required Result updated(_Updated value),
    @required Result liked(_Liked value),
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initiated(_Initiated value),
    Result updated(_Updated value),
    Result liked(_Liked value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SentencesEventCopyWith<$Res> {
  factory $SentencesEventCopyWith(
          SentencesEvent value, $Res Function(SentencesEvent) then) =
      _$SentencesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SentencesEventCopyWithImpl<$Res>
    implements $SentencesEventCopyWith<$Res> {
  _$SentencesEventCopyWithImpl(this._value, this._then);

  final SentencesEvent _value;
  // ignore: unused_field
  final $Res Function(SentencesEvent) _then;
}

/// @nodoc
abstract class _$InitiatedCopyWith<$Res> {
  factory _$InitiatedCopyWith(
          _Initiated value, $Res Function(_Initiated) then) =
      __$InitiatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitiatedCopyWithImpl<$Res> extends _$SentencesEventCopyWithImpl<$Res>
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
    return 'SentencesEvent.initiated()';
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
    @required Result updated(int index),
    @required Result liked(),
    @required Result deleted(int index),
  }) {
    assert(initiated != null);
    assert(updated != null);
    assert(liked != null);
    assert(deleted != null);
    return initiated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initiated(),
    Result updated(int index),
    Result liked(),
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
    @required Result updated(_Updated value),
    @required Result liked(_Liked value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initiated != null);
    assert(updated != null);
    assert(liked != null);
    assert(deleted != null);
    return initiated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initiated(_Initiated value),
    Result updated(_Updated value),
    Result liked(_Liked value),
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

abstract class _Initiated implements SentencesEvent {
  const factory _Initiated() = _$_Initiated;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res> extends _$SentencesEventCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_Updated(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_Updated implements _Updated {
  const _$_Updated(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'SentencesEvent.updated(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updated &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initiated(),
    @required Result updated(int index),
    @required Result liked(),
    @required Result deleted(int index),
  }) {
    assert(initiated != null);
    assert(updated != null);
    assert(liked != null);
    assert(deleted != null);
    return updated(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initiated(),
    Result updated(int index),
    Result liked(),
    Result deleted(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initiated(_Initiated value),
    @required Result updated(_Updated value),
    @required Result liked(_Liked value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initiated != null);
    assert(updated != null);
    assert(liked != null);
    assert(deleted != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initiated(_Initiated value),
    Result updated(_Updated value),
    Result liked(_Liked value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements SentencesEvent {
  const factory _Updated(int index) = _$_Updated;

  int get index;
  _$UpdatedCopyWith<_Updated> get copyWith;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$SentencesEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;
}

/// @nodoc
class _$_Liked implements _Liked {
  const _$_Liked();

  @override
  String toString() {
    return 'SentencesEvent.liked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Liked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initiated(),
    @required Result updated(int index),
    @required Result liked(),
    @required Result deleted(int index),
  }) {
    assert(initiated != null);
    assert(updated != null);
    assert(liked != null);
    assert(deleted != null);
    return liked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initiated(),
    Result updated(int index),
    Result liked(),
    Result deleted(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initiated(_Initiated value),
    @required Result updated(_Updated value),
    @required Result liked(_Liked value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initiated != null);
    assert(updated != null);
    assert(liked != null);
    assert(deleted != null);
    return liked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initiated(_Initiated value),
    Result updated(_Updated value),
    Result liked(_Liked value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements SentencesEvent {
  const factory _Liked() = _$_Liked;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$SentencesEventCopyWithImpl<$Res>
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
    return 'SentencesEvent.deleted(index: $index)';
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
    @required Result updated(int index),
    @required Result liked(),
    @required Result deleted(int index),
  }) {
    assert(initiated != null);
    assert(updated != null);
    assert(liked != null);
    assert(deleted != null);
    return deleted(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initiated(),
    Result updated(int index),
    Result liked(),
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
    @required Result updated(_Updated value),
    @required Result liked(_Liked value),
    @required Result deleted(_Deleted value),
  }) {
    assert(initiated != null);
    assert(updated != null);
    assert(liked != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initiated(_Initiated value),
    Result updated(_Updated value),
    Result liked(_Liked value),
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

abstract class _Deleted implements SentencesEvent {
  const factory _Deleted(int index) = _$_Deleted;

  int get index;
  _$DeletedCopyWith<_Deleted> get copyWith;
}

/// @nodoc
class _$SentencesStateTearOff {
  const _$SentencesStateTearOff();

// ignore: unused_element
  _SentencesState call(
      {@required int sentenceIndex,
      @required List<Sentence> sentences,
      @required String failureMessage}) {
    return _SentencesState(
      sentenceIndex: sentenceIndex,
      sentences: sentences,
      failureMessage: failureMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SentencesState = _$SentencesStateTearOff();

/// @nodoc
mixin _$SentencesState {
  int get sentenceIndex;
  List<Sentence> get sentences;
  String get failureMessage;

  $SentencesStateCopyWith<SentencesState> get copyWith;
}

/// @nodoc
abstract class $SentencesStateCopyWith<$Res> {
  factory $SentencesStateCopyWith(
          SentencesState value, $Res Function(SentencesState) then) =
      _$SentencesStateCopyWithImpl<$Res>;
  $Res call(
      {int sentenceIndex, List<Sentence> sentences, String failureMessage});
}

/// @nodoc
class _$SentencesStateCopyWithImpl<$Res>
    implements $SentencesStateCopyWith<$Res> {
  _$SentencesStateCopyWithImpl(this._value, this._then);

  final SentencesState _value;
  // ignore: unused_field
  final $Res Function(SentencesState) _then;

  @override
  $Res call({
    Object sentenceIndex = freezed,
    Object sentences = freezed,
    Object failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      sentenceIndex: sentenceIndex == freezed
          ? _value.sentenceIndex
          : sentenceIndex as int,
      sentences:
          sentences == freezed ? _value.sentences : sentences as List<Sentence>,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$SentencesStateCopyWith<$Res>
    implements $SentencesStateCopyWith<$Res> {
  factory _$SentencesStateCopyWith(
          _SentencesState value, $Res Function(_SentencesState) then) =
      __$SentencesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int sentenceIndex, List<Sentence> sentences, String failureMessage});
}

/// @nodoc
class __$SentencesStateCopyWithImpl<$Res>
    extends _$SentencesStateCopyWithImpl<$Res>
    implements _$SentencesStateCopyWith<$Res> {
  __$SentencesStateCopyWithImpl(
      _SentencesState _value, $Res Function(_SentencesState) _then)
      : super(_value, (v) => _then(v as _SentencesState));

  @override
  _SentencesState get _value => super._value as _SentencesState;

  @override
  $Res call({
    Object sentenceIndex = freezed,
    Object sentences = freezed,
    Object failureMessage = freezed,
  }) {
    return _then(_SentencesState(
      sentenceIndex: sentenceIndex == freezed
          ? _value.sentenceIndex
          : sentenceIndex as int,
      sentences:
          sentences == freezed ? _value.sentences : sentences as List<Sentence>,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage as String,
    ));
  }
}

/// @nodoc
class _$_SentencesState extends _SentencesState {
  _$_SentencesState(
      {@required this.sentenceIndex,
      @required this.sentences,
      @required this.failureMessage})
      : assert(sentenceIndex != null),
        assert(sentences != null),
        assert(failureMessage != null),
        super._();

  @override
  final int sentenceIndex;
  @override
  final List<Sentence> sentences;
  @override
  final String failureMessage;

  @override
  String toString() {
    return 'SentencesState(sentenceIndex: $sentenceIndex, sentences: $sentences, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SentencesState &&
            (identical(other.sentenceIndex, sentenceIndex) ||
                const DeepCollectionEquality()
                    .equals(other.sentenceIndex, sentenceIndex)) &&
            (identical(other.sentences, sentences) ||
                const DeepCollectionEquality()
                    .equals(other.sentences, sentences)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sentenceIndex) ^
      const DeepCollectionEquality().hash(sentences) ^
      const DeepCollectionEquality().hash(failureMessage);

  @override
  _$SentencesStateCopyWith<_SentencesState> get copyWith =>
      __$SentencesStateCopyWithImpl<_SentencesState>(this, _$identity);
}

abstract class _SentencesState extends SentencesState {
  _SentencesState._() : super._();
  factory _SentencesState(
      {@required int sentenceIndex,
      @required List<Sentence> sentences,
      @required String failureMessage}) = _$_SentencesState;

  @override
  int get sentenceIndex;
  @override
  List<Sentence> get sentences;
  @override
  String get failureMessage;
  @override
  _$SentencesStateCopyWith<_SentencesState> get copyWith;
}
