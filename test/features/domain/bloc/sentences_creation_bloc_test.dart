import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:values_generator/features/domain/bloc/sentences_creation/sentences_creation_bloc.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/domain/formz/standard_input.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';

class MockSentencesRepository extends Mock implements SentencesRepository {}

class MockSentencesBloc extends MockBloc<SentencesState> implements SentencesBloc {}

class MockSnackbarBloc extends MockBloc<SnackbarState> implements SnackbarBloc {}

void main() {
  MockSentencesBloc mockSentencesBloc;
  MockSentencesRepository mockSentencesRepository;
  MockSnackbarBloc mockSnackbarBloc;
  var phrase = '';

  setUp(() {
    mockSentencesRepository = MockSentencesRepository();
    mockSentencesBloc = MockSentencesBloc();
    mockSnackbarBloc = MockSnackbarBloc();
  });

  tearDown(() async {
    await mockSentencesBloc.close();
    await mockSnackbarBloc.close();
  });

  group(
    'updated',
    () {
      blocTest(
        'emits modified standardTextInput when succeeds',
        build: () => SentencesCreationBloc(mockSentencesRepository, mockSentencesBloc, mockSnackbarBloc),
        act: (cubit) => cubit.add(SentencesCreationEvent.updated(phrase)),
        expect: [
          SentencesCreationState.init().copyWith(
            standardTextInput: StandardTextInput.dirty(
              value: phrase,
            ),
          )
        ],
      );
    },
  );

  group(
    'submitted',
    () {
      blocTest(
        'emits isSubmitting: false, isSuccess: true, when succeeds',
        build: () => SentencesCreationBloc(mockSentencesRepository, mockSentencesBloc, mockSnackbarBloc),
        act: (cubit) => cubit.add(const SentencesCreationEvent.submitted()),
        expect: [
          SentencesCreationState.init().copyWith(
            isSubmitting: true,
          ),
          SentencesCreationState.init().copyWith(
            isSubmitting: false,
            isSuccess: true,
            standardTextInput: const StandardTextInput.pure(),
          ),
        ],
      );

      blocTest(
        'emits isSubmitting: false and then isSuccess: false, when succeeds',
        build: () {
          when(mockSentencesRepository.saveSentence('')).thenThrow(Failure(''));

          return SentencesCreationBloc(mockSentencesRepository, mockSentencesBloc, mockSnackbarBloc);
        },
        act: (cubit) => cubit.add(const SentencesCreationEvent.submitted()),
        expect: [
          SentencesCreationState.init().copyWith(
            isSubmitting: true,
          ),
          SentencesCreationState.init().copyWith(
            isSubmitting: false,
          ),
        ],
      );
    },
  );
}
