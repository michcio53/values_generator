part of 'favorite_sentences_bloc.dart';

@freezed
abstract class FavoriteSentencesEvent with _$FavoriteSentencesEvent {
  const factory FavoriteSentencesEvent.initiated() = _Initiated;
  const factory FavoriteSentencesEvent.deleted(int index) = _Deleted;
}