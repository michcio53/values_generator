import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';

part 'launch_event.dart';
part 'launch_state.dart';

part 'launch_bloc.freezed.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  LaunchBloc(
    this._sentencesRepository,
  ) : super(const _InProgress());

  final SentencesRepository _sentencesRepository;

  @override
  Stream<LaunchState> mapEventToState(LaunchEvent event) async* {
    yield* event.map(started: (event) async* {
      yield* _mapLaunchStartedToState(event);
    });
  }

  Stream<LaunchState> _mapLaunchStartedToState(_Started event) async* {
    try {
      await _sentencesRepository.prefillDatabase();
      yield const LaunchState.complete();
    } on Failure catch (e) {
      yield LaunchState.failure(e.message);
    }
  }
}
