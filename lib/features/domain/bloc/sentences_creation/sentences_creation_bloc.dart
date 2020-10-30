import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/domain/formz/standard_input.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';

part 'sentences_creation_event.dart';
part 'sentences_creation_state.dart';

part 'sentences_creation_bloc.freezed.dart';

class SentencesCreationBloc extends Bloc<SentencesCreationEvent, SentencesCreationState> {
  SentencesCreationBloc(
    this._sentencesRepository,
    this._sentencesBloc,
    this._snackbarBloc,
  ) : super(SentencesCreationState.init());

  final SentencesRepository _sentencesRepository;
  final SentencesBloc _sentencesBloc;
  final SnackbarBloc _snackbarBloc;

  @override
  Stream<SentencesCreationState> mapEventToState(SentencesCreationEvent event) async* {
    yield* event.map(updated: (event) async* {
      yield* _mapSentecesCreationUpdatedToState(event);
    }, submitted: (event) async* {
      yield* _mapSentencesCreationSubmittedToState(event);
    });
  }

  Stream<SentencesCreationState> _mapSentecesCreationUpdatedToState(_Updated event) async* {
    yield state.copyWith(
      standardTextInput: StandardTextInput.dirty(
        value: event.text,
      ),
    );
  }

  Stream<SentencesCreationState> _mapSentencesCreationSubmittedToState(_Submitted event) async* {
    yield state.copyWith(isSubmitting: true);

    try {
      await _sentencesRepository.saveSentence(state.standardTextInput.value);

      _sentencesBloc.add(const SentencesEvent.initiated());

      yield state.copyWith(
        isSubmitting: false,
        isSuccess: true,
      );
    } on Failure catch (e) {
      _snackbarBloc.add(SnackbarEvent.failureOccured(e));
      yield state.copyWith(isSubmitting: false);
    }
  }
}
