import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/features/domain/bloc/favourite_sentences/favorite_sentences_bloc.dart';
import 'package:values_generator/features/domain/bloc/snackbar/snackbar_bloc.dart';
import 'package:values_generator/features/domain/entities/sentence.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';
import 'package:easy_localization/src/translations.dart';
import 'package:easy_localization/src/localization.dart';
import 'package:values_generator/features/presentation/constants/presentation_constatns.dart';

class MockSentencesRepository extends Mock implements SentencesRepository {}

class MockSnackbarBloc extends MockBloc<SnackbarState> implements SnackbarBloc {}

class TranslationsMock extends Mock implements Translations {}

void main() {
  MockSentencesRepository mockSentencesRepository;
  MockSnackbarBloc mockSnackbarBloc;

  var favourites = [
    Sentence(uuid: '', sentence: ''),
  ];

  setUp(() {
    mockSentencesRepository = MockSentencesRepository();
    mockSnackbarBloc = MockSnackbarBloc();

    var translations = TranslationsMock();

    when(translations.get(any)).thenReturn('');

    Localization.load(PresentationConstants.usLocale, translations: translations);
  });

  tearDown(() async {
    await mockSnackbarBloc.close();
  });

  group('initiated', () {
    blocTest(
      'emits [success] when  succeed',
      build: () {
        when(mockSentencesRepository.getFavourites()).thenAnswer((realInvocation) async => favourites);
        return FavoriteSentencesBloc(mockSentencesRepository, mockSnackbarBloc);
      },
      act: (cubit) => cubit.add(const FavoriteSentencesEvent.initiated()),
      expect: [
        FavoriteSentencesState.success(favourites),
      ],
    );

    blocTest(
      'emits [failure] when  failed',
      build: () {
        when(mockSentencesRepository.getFavourites()).thenThrow(Failure(''));
        return FavoriteSentencesBloc(mockSentencesRepository, mockSnackbarBloc);
      },
      act: (cubit) => cubit.add(const FavoriteSentencesEvent.initiated()),
      expect: [
        const FavoriteSentencesState.failure(''),
      ],
    );
  });

  group('deleted', () {
    blocTest(
      'emits [success] when  succeed',
      build: () {
        when(mockSentencesRepository.getFavourites()).thenAnswer((realInvocation) async => favourites);
        return FavoriteSentencesBloc(mockSentencesRepository, mockSnackbarBloc);
      },
      act: (cubit) {
        cubit.add(const FavoriteSentencesEvent.initiated());
        cubit.add(const FavoriteSentencesEvent.deleted(0));
      },
      expect: [
        FavoriteSentencesState.success(favourites),
      ],
    );

    blocTest(
      'emits [success] when failed',
      build: () {
        when(mockSentencesRepository.getFavourites()).thenAnswer((realInvocation) async => favourites);
        when(mockSentencesRepository.deleteFavourite('')).thenThrow(Failure(''));
        return FavoriteSentencesBloc(mockSentencesRepository, mockSnackbarBloc);
      },
      act: (cubit) {
        cubit.add(const FavoriteSentencesEvent.initiated());
        cubit.add(const FavoriteSentencesEvent.deleted(0));
      },
      expect: [
        FavoriteSentencesState.success(favourites),
      ],
    );
  });
}
