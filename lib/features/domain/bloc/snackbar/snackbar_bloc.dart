import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';

part 'snackbar_event.dart';
part 'snackbar_state.dart';
part 'snackbar_bloc.freezed.dart';

class SnackbarBloc extends Bloc<SnackbarEvent, SnackbarState> {
  SnackbarBloc() : super(const _Initial());

  @override
  Stream<SnackbarState> mapEventToState(SnackbarEvent event) async* {
    yield* event.map(
      failureOccured: (event) async* {
        yield* _mapSnackbarFailureOccuredToState(event);
      },
      positive: (event) async* {
        yield* _mapSnackbarPositiveShowedToState(event);
      },
      negative: (event) async* {
        yield* _mapSnackbarNegativeShowedToState(event);
      },
    );
    await Future.delayed(const Duration(milliseconds: 10));
    yield const SnackbarState.initial();
  }

  Stream<SnackbarState> _mapSnackbarFailureOccuredToState(_FailureOccured event) async* {
    yield SnackbarState.visible(
      message: event.failure.message,
      color: ProjectColors.darkerGunpowderGray,
    );
  }

  Stream<SnackbarState> _mapSnackbarPositiveShowedToState(_PositiveShowed event) async* {
    yield SnackbarState.visible(
      message: event.message,
      color: ProjectColors.grassGreen,
    );
  }

  Stream<SnackbarState> _mapSnackbarNegativeShowedToState(_NegativeShowed event) async* {
    yield SnackbarState.visible(
      message: event.message,
      color: ProjectColors.tomato,
    );
  }
}
