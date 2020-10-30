part of 'favorite_sentences_bloc.dart';

@freezed
abstract class FavoriteSentencesState with _$FavoriteSentencesState {
  const factory FavoriteSentencesState.inProgress() = _InProgress;
  const factory FavoriteSentencesState.success(List<Sentence> favoriteSentences) = _Success;
  const factory FavoriteSentencesState.failure(String message) = _Failure;
}
