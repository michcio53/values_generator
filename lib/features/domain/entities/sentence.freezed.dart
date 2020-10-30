// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sentence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SentenceTearOff {
  const _$SentenceTearOff();

// ignore: unused_element
  _Sentence call(
      {String uuid, String sentence, DateTime dateTime, bool isDeletable}) {
    return _Sentence(
      uuid: uuid,
      sentence: sentence,
      dateTime: dateTime,
      isDeletable: isDeletable,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Sentence = _$SentenceTearOff();

/// @nodoc
mixin _$Sentence {
  String get uuid;
  String get sentence;
  DateTime get dateTime;
  bool get isDeletable;

  $SentenceCopyWith<Sentence> get copyWith;
}

/// @nodoc
abstract class $SentenceCopyWith<$Res> {
  factory $SentenceCopyWith(Sentence value, $Res Function(Sentence) then) =
      _$SentenceCopyWithImpl<$Res>;
  $Res call(
      {String uuid, String sentence, DateTime dateTime, bool isDeletable});
}

/// @nodoc
class _$SentenceCopyWithImpl<$Res> implements $SentenceCopyWith<$Res> {
  _$SentenceCopyWithImpl(this._value, this._then);

  final Sentence _value;
  // ignore: unused_field
  final $Res Function(Sentence) _then;

  @override
  $Res call({
    Object uuid = freezed,
    Object sentence = freezed,
    Object dateTime = freezed,
    Object isDeletable = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed ? _value.uuid : uuid as String,
      sentence: sentence == freezed ? _value.sentence : sentence as String,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
      isDeletable:
          isDeletable == freezed ? _value.isDeletable : isDeletable as bool,
    ));
  }
}

/// @nodoc
abstract class _$SentenceCopyWith<$Res> implements $SentenceCopyWith<$Res> {
  factory _$SentenceCopyWith(_Sentence value, $Res Function(_Sentence) then) =
      __$SentenceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid, String sentence, DateTime dateTime, bool isDeletable});
}

/// @nodoc
class __$SentenceCopyWithImpl<$Res> extends _$SentenceCopyWithImpl<$Res>
    implements _$SentenceCopyWith<$Res> {
  __$SentenceCopyWithImpl(_Sentence _value, $Res Function(_Sentence) _then)
      : super(_value, (v) => _then(v as _Sentence));

  @override
  _Sentence get _value => super._value as _Sentence;

  @override
  $Res call({
    Object uuid = freezed,
    Object sentence = freezed,
    Object dateTime = freezed,
    Object isDeletable = freezed,
  }) {
    return _then(_Sentence(
      uuid: uuid == freezed ? _value.uuid : uuid as String,
      sentence: sentence == freezed ? _value.sentence : sentence as String,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
      isDeletable:
          isDeletable == freezed ? _value.isDeletable : isDeletable as bool,
    ));
  }
}

/// @nodoc
class _$_Sentence implements _Sentence {
  _$_Sentence({this.uuid, this.sentence, this.dateTime, this.isDeletable});

  @override
  final String uuid;
  @override
  final String sentence;
  @override
  final DateTime dateTime;
  @override
  final bool isDeletable;

  @override
  String toString() {
    return 'Sentence(uuid: $uuid, sentence: $sentence, dateTime: $dateTime, isDeletable: $isDeletable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sentence &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.sentence, sentence) ||
                const DeepCollectionEquality()
                    .equals(other.sentence, sentence)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.isDeletable, isDeletable) ||
                const DeepCollectionEquality()
                    .equals(other.isDeletable, isDeletable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(sentence) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(isDeletable);

  @override
  _$SentenceCopyWith<_Sentence> get copyWith =>
      __$SentenceCopyWithImpl<_Sentence>(this, _$identity);
}

abstract class _Sentence implements Sentence {
  factory _Sentence(
      {String uuid,
      String sentence,
      DateTime dateTime,
      bool isDeletable}) = _$_Sentence;

  @override
  String get uuid;
  @override
  String get sentence;
  @override
  DateTime get dateTime;
  @override
  bool get isDeletable;
  @override
  _$SentenceCopyWith<_Sentence> get copyWith;
}
