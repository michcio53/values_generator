import 'dart:math';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/bloc/sentences/sentences_bloc.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/domain/entities/sentence.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';

class MockSentencesRepository extends Mock implements SentencesRepository {}

class MockRandom extends Mock implements Random {}

class MockSnackbarBloc extends MockBloc<SnackbarState> implements SnackbarBloc {}

void main() {
  MockSentencesRepository mockSentencesRepository;
  MockRandom mockRandom;
  MockSnackbarBloc mockSnackbarBloc;

  var sentences = [
    Sentence(uuid: 'test', sentence: 'test', dateTime: DateTime.now(), isDeletable: false),
    Sentence(uuid: 'test1', sentence: 'test1', dateTime: DateTime.now(), isDeletable: true)
  ];

  setUp(() {
    mockSentencesRepository = MockSentencesRepository();
    mockRandom = MockRandom();
    mockSnackbarBloc = MockSnackbarBloc();
  });

  tearDown(() async {
    await mockSnackbarBloc.close();
  });

  group(
    'initiated',
    () {
      blocTest(
        'emits sentences and index when succed',
        build: () {
          when(mockRandom.nextInt(sentences.length)).thenAnswer((realInvocation) => 1);
          when(mockSentencesRepository.getSentences()).thenAnswer((realInvocation) async => sentences);

          return SentencesBloc(mockSentencesRepository, mockRandom, mockSnackbarBloc);
        },
        act: (cubit) => cubit.add(const SentencesEvent.initiated()),
        expect: [
          SentencesState.init().copyWith(
            sentenceIndex: 1,
            sentences: sentences,
          ),
        ],
      );

      blocTest(
        'emits failue message when failed',
        build: () {
          when(mockRandom.nextInt(sentences.length)).thenAnswer((realInvocation) => 1);
          when(mockSentencesRepository.getSentences()).thenThrow(Failure('test'));

          return SentencesBloc(mockSentencesRepository, mockRandom, mockSnackbarBloc);
        },
        act: (cubit) => cubit.add(const SentencesEvent.initiated()),
        expect: [
          SentencesState.init().copyWith(failureMessage: 'test'),
        ],
      );
    },
  );

  group('liked', () {
    blocTest(
      'emits nothing when success',
      build: () {
        when(mockSentencesRepository.saveFavourite(any)).thenThrow(Failure('test'));

        return SentencesBloc(mockSentencesRepository, mockRandom, mockSnackbarBloc);
      },
      act: (cubit) => cubit.add(const SentencesEvent.liked()),
      expect: [],
    );

    blocTest(
      'emits nothing when failed',
      build: () {
        when(mockSentencesRepository.saveFavourite(any)).thenThrow(Failure('test'));

        return SentencesBloc(mockSentencesRepository, mockRandom, mockSnackbarBloc);
      },
      act: (cubit) => cubit.add(const SentencesEvent.liked()),
      expect: [],
    );
  });

  group('deleted', () {
    blocTest(
      'emits sentences and index when success',
      build: () {
        when(mockRandom.nextInt(sentences.length)).thenAnswer((realInvocation) => 1);
        when(mockSentencesRepository.getSentences()).thenAnswer((realInvocation) async => sentences);

        return SentencesBloc(mockSentencesRepository, mockRandom, mockSnackbarBloc);
      },
      act: (cubit) {
        cubit.add(const SentencesEvent.initiated());
        cubit.add(const SentencesEvent.deleted(0));
      },
      expect: [
        SentencesState.init().copyWith(
          sentenceIndex: 1,
          sentences: sentences,
        ),
      ],
    );

    blocTest(
      'emits initiated values when failured',
      build: () {
        when(mockRandom.nextInt(sentences.length)).thenAnswer((realInvocation) => 1);
        when(mockSentencesRepository.getSentences()).thenAnswer((realInvocation) async => sentences);
        when(mockSentencesRepository.deleteSentence(any)).thenThrow(Failure(''));

        return SentencesBloc(mockSentencesRepository, mockRandom, mockSnackbarBloc);
      },
      act: (cubit) {
        cubit.add(const SentencesEvent.initiated());
        cubit.add(const SentencesEvent.deleted(0));
      },
      expect: [
        SentencesState.init().copyWith(
          sentenceIndex: 1,
          sentences: sentences,
        ),
      ],
    );

    blocTest(
      'emits initiated values when cannot delete',
      build: () {
        when(mockRandom.nextInt(sentences.length)).thenAnswer((realInvocation) => 0);
        when(mockSentencesRepository.getSentences()).thenAnswer((realInvocation) async => sentences);
        return SentencesBloc(mockSentencesRepository, mockRandom, mockSnackbarBloc);
      },
      act: (cubit) {
        cubit.add(const SentencesEvent.initiated());
        cubit.add(const SentencesEvent.deleted(0));
      },
      expect: [
        SentencesState.init().copyWith(
          sentenceIndex: 0,
          sentences: sentences,
        ),
      ],
    );
  });
}
