import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';

void main() {
  group('snackbar', () {
    blocTest(
      'failure test',
      build: () => SnackbarBloc(),
      act: (cubit) => cubit.add(
        SnackbarEvent.failureOccured(
          Failure(''),
        ),
      ),
      expect: [
        const SnackbarState.visible(message: '', color: ProjectColors.darkerGunpowderGray),
        const SnackbarState.initial(),
      ],
    );

    blocTest(
      'positive test',
      build: () => SnackbarBloc(),
      act: (cubit) => cubit.add(
        const SnackbarEvent.positive(''),
      ),
      expect: [
        const SnackbarState.visible(
          message: '',
          color: ProjectColors.grassGreen,
        ),
        const SnackbarState.initial(),
      ],
    );

    blocTest(
      'negative test',
      build: () => SnackbarBloc(),
      act: (cubit) => cubit.add(
        const SnackbarEvent.negative(''),
      ),
      expect: [
        const SnackbarState.visible(
          message: '',
          color: ProjectColors.tomato,
        ),
        const SnackbarState.initial(),
      ],
    );
  });
}
