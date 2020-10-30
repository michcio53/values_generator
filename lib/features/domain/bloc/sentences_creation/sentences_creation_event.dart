part of 'sentences_creation_bloc.dart';

@freezed
abstract class SentencesCreationEvent with _$SentencesCreationEvent {
  const factory SentencesCreationEvent.updated(String text) = _Updated;
  const factory SentencesCreationEvent.submitted() = _Submitted;
}
