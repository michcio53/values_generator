part of 'sentences_bloc.dart';

@freezed
abstract class SentencesState with _$SentencesState {
  factory SentencesState({
    @required int sentenceIndex,
    @required List<Sentence> sentences,
    @required String failureMessage,
  }) = _SentencesState;

  SentencesState._();

  factory SentencesState.init() => SentencesState(
        sentenceIndex: -1,
        sentences: [],
        failureMessage: ''
      );

  Sentence get currentSentence => sentenceIndex != -1 ? sentences[sentenceIndex] : null;
}
