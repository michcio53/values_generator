part of 'sentences_bloc.dart';

@freezed
abstract class SentencesEvent with _$SentencesEvent {
  const factory SentencesEvent.initiated() = _Initiated;
  const factory SentencesEvent.updated(int index) = _Updated;
  const factory SentencesEvent.liked() = _Liked;
  const factory SentencesEvent.deleted(int index) = _Deleted;
}
