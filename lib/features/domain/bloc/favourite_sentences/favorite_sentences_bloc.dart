import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/domain/entities/sentence.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';

part 'favorite_sentences_event.dart';
part 'favorite_sentences_state.dart';
part 'favorite_sentences_bloc.freezed.dart';

class FavoriteSentencesBloc extends Bloc<FavoriteSentencesEvent, FavoriteSentencesState> {
  FavoriteSentencesBloc(
    this._sentencesRepository,
    this._snackbarBloc,
  ) : super(const _InProgress());

  final SentencesRepository _sentencesRepository;
  final SnackbarBloc _snackbarBloc;

  @override
  Stream<FavoriteSentencesState> mapEventToState(FavoriteSentencesEvent event) async* {
    yield* event.map(initiated: (event) async* {
      yield* _mapFavourieSentencesInitiatedToState(event);
    }, deleted: (event) async* {
      yield* _mapFavourieSentencesDeletedToState(event);
    });
  }

  Stream<FavoriteSentencesState> _mapFavourieSentencesInitiatedToState(_Initiated event) async* {
    try {
      var favouritesSenteces = await _sentencesRepository.getFavourites()
        ..sort((a, b) => a.dateTime.compareTo(b.dateTime));

      yield FavoriteSentencesState.success(favouritesSenteces);
    } on Failure catch (e) {
      _snackbarBloc.add(SnackbarEvent.failureOccured(e));
      yield FavoriteSentencesState.failure(e.message);
    }
  }

  Stream<FavoriteSentencesState> _mapFavourieSentencesDeletedToState(_Deleted event) async* {
    if (state is _Success) {
      try {
        var sentence = (state as _Success).favoriteSentences[event.index];
        await _sentencesRepository.deleteFavourite(sentence.uuid);

        add(const FavoriteSentencesEvent.initiated());
      } on Failure catch (e) {
        _snackbarBloc.add(SnackbarEvent.failureOccured(e));
      }
    }
  }
}
