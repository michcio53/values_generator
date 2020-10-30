import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/bloc/launch/launch_bloc.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';

class MockSentencesRepository extends Mock implements SentencesRepository {}

void main() {
  MockSentencesRepository mockSentencesRepository;

  setUp(() {
    mockSentencesRepository = MockSentencesRepository();
  });

  group(
    'initiated',
    () {
      blocTest(
        'emits [complete] when succeeds',
        build: () => LaunchBloc(mockSentencesRepository),
        act: (cubit) => cubit.add(const LaunchEvent.started()),
        expect: [
          const LaunchState.complete(),
        ],
      );

      blocTest(
        'emits [failure] when failed',
        build: () {
          when(mockSentencesRepository.prefillDatabase()).thenThrow(Failure(''));
          return LaunchBloc(mockSentencesRepository);
        },
        act: (cubit) => cubit.add(const LaunchEvent.started()),
        expect: [
          const LaunchState.failure(''),
        ],
      );
    },
  );
}
