// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sentences_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SentencesCreationEventTearOff {
  const _$SentencesCreationEventTearOff();

// ignore: unused_element
  _Updated updated(String text) {
    return _Updated(
      text,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
// ignore: unused_element
const $SentencesCreationEvent = _$SentencesCreationEventTearOff();

/// @nodoc
mixin _$SentencesCreationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(String text),
    @required Result submitted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(String text),
    Result submitted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(_Updated value),
    @required Result submitted(_Submitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(_Updated value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SentencesCreationEventCopyWith<$Res> {
  factory $SentencesCreationEventCopyWith(SentencesCreationEvent value,
          $Res Function(SentencesCreationEvent) then) =
      _$SentencesCreationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SentencesCreationEventCopyWithImpl<$Res>
    implements $SentencesCreationEventCopyWith<$Res> {
  _$SentencesCreationEventCopyWithImpl(this._value, this._then);

  final SentencesCreationEvent _value;
  // ignore: unused_field
  final $Res Function(SentencesCreationEvent) _then;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res>
    extends _$SentencesCreationEventCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_Updated(
      text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$_Updated implements _Updated {
  const _$_Updated(this.text) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'SentencesCreationEvent.updated(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Updated &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @override
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(String text),
    @required Result submitted(),
  }) {
    assert(updated != null);
    assert(submitted != null);
    return updated(text);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(String text),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(_Updated value),
    @required Result submitted(_Submitted value),
  }) {
    assert(updated != null);
    assert(submitted != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(_Updated value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements SentencesCreationEvent {
  const factory _Updated(String text) = _$_Updated;

  String get text;
  _$UpdatedCopyWith<_Updated> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$SentencesCreationEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc
class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'SentencesCreationEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(String text),
    @required Result submitted(),
  }) {
    assert(updated != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(String text),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(_Updated value),
    @required Result submitted(_Submitted value),
  }) {
    assert(updated != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(_Updated value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SentencesCreationEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$SentencesCreationStateTearOff {
  const _$SentencesCreationStateTearOff();

// ignore: unused_element
  _SentencesCreationState call(
      {@required StandardTextInput standardTextInput,
      @required bool isSubmitting,
      @required bool isSuccess}) {
    return _SentencesCreationState(
      standardTextInput: standardTextInput,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SentencesCreationState = _$SentencesCreationStateTearOff();

/// @nodoc
mixin _$SentencesCreationState {
  StandardTextInput get standardTextInput;
  bool get isSubmitting;
  bool get isSuccess;

  $SentencesCreationStateCopyWith<SentencesCreationState> get copyWith;
}

/// @nodoc
abstract class $SentencesCreationStateCopyWith<$Res> {
  factory $SentencesCreationStateCopyWith(SentencesCreationState value,
          $Res Function(SentencesCreationState) then) =
      _$SentencesCreationStateCopyWithImpl<$Res>;
  $Res call(
      {StandardTextInput standardTextInput, bool isSubmitting, bool isSuccess});
}

/// @nodoc
class _$SentencesCreationStateCopyWithImpl<$Res>
    implements $SentencesCreationStateCopyWith<$Res> {
  _$SentencesCreationStateCopyWithImpl(this._value, this._then);

  final SentencesCreationState _value;
  // ignore: unused_field
  final $Res Function(SentencesCreationState) _then;

  @override
  $Res call({
    Object standardTextInput = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      standardTextInput: standardTextInput == freezed
          ? _value.standardTextInput
          : standardTextInput as StandardTextInput,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
    ));
  }
}

/// @nodoc
abstract class _$SentencesCreationStateCopyWith<$Res>
    implements $SentencesCreationStateCopyWith<$Res> {
  factory _$SentencesCreationStateCopyWith(_SentencesCreationState value,
          $Res Function(_SentencesCreationState) then) =
      __$SentencesCreationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StandardTextInput standardTextInput, bool isSubmitting, bool isSuccess});
}

/// @nodoc
class __$SentencesCreationStateCopyWithImpl<$Res>
    extends _$SentencesCreationStateCopyWithImpl<$Res>
    implements _$SentencesCreationStateCopyWith<$Res> {
  __$SentencesCreationStateCopyWithImpl(_SentencesCreationState _value,
      $Res Function(_SentencesCreationState) _then)
      : super(_value, (v) => _then(v as _SentencesCreationState));

  @override
  _SentencesCreationState get _value => super._value as _SentencesCreationState;

  @override
  $Res call({
    Object standardTextInput = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
  }) {
    return _then(_SentencesCreationState(
      standardTextInput: standardTextInput == freezed
          ? _value.standardTextInput
          : standardTextInput as StandardTextInput,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
    ));
  }
}

/// @nodoc
class _$_SentencesCreationState extends _SentencesCreationState {
  _$_SentencesCreationState(
      {@required this.standardTextInput,
      @required this.isSubmitting,
      @required this.isSuccess})
      : assert(standardTextInput != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        super._();

  @override
  final StandardTextInput standardTextInput;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'SentencesCreationState(standardTextInput: $standardTextInput, isSubmitting: $isSubmitting, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SentencesCreationState &&
            (identical(other.standardTextInput, standardTextInput) ||
                const DeepCollectionEquality()
                    .equals(other.standardTextInput, standardTextInput)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(standardTextInput) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess);

  @override
  _$SentencesCreationStateCopyWith<_SentencesCreationState> get copyWith =>
      __$SentencesCreationStateCopyWithImpl<_SentencesCreationState>(
          this, _$identity);
}

abstract class _SentencesCreationState extends SentencesCreationState {
  _SentencesCreationState._() : super._();
  factory _SentencesCreationState(
      {@required StandardTextInput standardTextInput,
      @required bool isSubmitting,
      @required bool isSuccess}) = _$_SentencesCreationState;

  @override
  StandardTextInput get standardTextInput;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  _$SentencesCreationStateCopyWith<_SentencesCreationState> get copyWith;
}
