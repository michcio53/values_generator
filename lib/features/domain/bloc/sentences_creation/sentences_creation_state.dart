part of 'sentences_creation_bloc.dart';

@freezed
abstract class SentencesCreationState with _$SentencesCreationState {
  factory SentencesCreationState({
    @required StandardTextInput standardTextInput,
    @required bool isSubmitting,
    @required bool isSuccess,
  }) = _SentencesCreationState;

  SentencesCreationState._();

  factory SentencesCreationState.init() => SentencesCreationState(
        standardTextInput: const StandardTextInput.pure(),
        isSubmitting: false,
        isSuccess: false,
      );
}
