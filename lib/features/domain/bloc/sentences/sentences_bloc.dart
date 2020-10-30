import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/domain/entities/sentence.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';
import 'package:values_generator/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

part 'sentences_bloc.freezed.dart';

part 'sentences_event.dart';
part 'sentences_state.dart';

class SentencesBloc extends Bloc<SentencesEvent, SentencesState> {
  SentencesBloc(
    this._sentencesRepository,
    this._random,
    this._snackbarBloc,
  ) : super(SentencesState.init());

  final SentencesRepository _sentencesRepository;
  final Random _random;
  final SnackbarBloc _snackbarBloc;
  StreamSubscription streamSubscription;

  @override
  Stream<SentencesState> mapEventToState(SentencesEvent event) async* {
    yield* event.map(initiated: (event) async* {
      yield* _mapSentencesInitiatedToState(event);
    }, updated: (event) async* {
      yield* _mapSentencesUpdatedToState(event);
    }, liked: (event) async* {
      yield* _mapSentecesLikedToState(event);
    }, deleted: (event) async* {
      yield* _mapSentecesDeletedToState(event);
    });
  }

  Stream<SentencesState> _mapSentencesInitiatedToState(
    _Initiated event,
  ) async* {
    try {
      var sentences = (await _sentencesRepository.getSentences())
        ..sort(
          (a, b) => a.dateTime.compareTo(
            b.dateTime,
          ),
        );

      yield state.copyWith(
        sentenceIndex: _random.nextInt(sentences.length),
        sentences: sentences,
      );

      await streamSubscription?.cancel();

      streamSubscription = Stream.periodic(const Duration(seconds: 5)).listen((event) {
        add(SentencesEvent.updated(_random.nextInt(sentences.length)));
      });
    } on Failure catch (e) {
      _snackbarBloc.add(SnackbarEvent.failureOccured(e));
      yield state.copyWith(failureMessage: e.message);
    }
  }

  Stream<SentencesState> _mapSentencesUpdatedToState(_Updated event) async* {
    yield state.copyWith(
      sentenceIndex: event.index,
    );
  }

  Stream<SentencesState> _mapSentecesLikedToState(_Liked event) async* {
    try {
      var updatedSentence = state.currentSentence.copyWith(dateTime: DateTime.now());

      await _sentencesRepository.saveFavourite(updatedSentence);

      _snackbarBloc.add(SnackbarEvent.positive(LocaleKeys.added_to_favourites.tr()));
    } on Failure catch (e) {
      _snackbarBloc.add(SnackbarEvent.failureOccured(e));
    }
  }

  Stream<SentencesState> _mapSentecesDeletedToState(_Deleted event) async* {
    var sentence = state.sentences[event.index];

    if (sentence.isDeletable) {
      try {
        await _sentencesRepository.deleteSentence(sentence.uuid);
        add(const SentencesEvent.initiated());
      } on Failure catch (e) {
        _snackbarBloc.add(SnackbarEvent.failureOccured(e));
      }
    } else {
      _snackbarBloc.add(SnackbarEvent.negative(LocaleKeys.item_cannot_be_deleted.tr()));
    }
  }

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    return super.close();
  }
}
