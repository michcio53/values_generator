import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:values_generator/features/data/datasources/local/sentences_local_datasource.dart';
import 'package:values_generator/features/data/models/local/sentence_entity.dart';
import 'package:values_generator/features/data/repositories/sentences_repository_impl.dart';
import 'package:values_generator/features/domain/entities/sentence.dart';

class MockSentencesLocalDatasource extends Mock implements SentencesLocalDatasource {}

void main() {
  SentencesLocalDatasource sentencesLocalDatasource;

  var dateTime = DateTime.now();

  var sentencesModels = [
    SentenceEntity(
      uuid: '1',
      sentence: '-',
      dateTime: dateTime,
      isDeletable: true,
    ),
    SentenceEntity(
      uuid: '2',
      sentence: '-',
      dateTime: dateTime,
      isDeletable: false,
    ),
  ];

  var sentences = [
    Sentence(
      uuid: '1',
      sentence: '-',
      dateTime: dateTime,
      isDeletable: true,
    ),
    Sentence(
      uuid: '2',
      sentence: '-',
      dateTime: dateTime,
      isDeletable: false,
    ),
  ];

  setUp(() {
    sentencesLocalDatasource = MockSentencesLocalDatasource();
  });

  test('should return mapped sentences to Sentece object', () async {
    when(sentencesLocalDatasource.getSentences()).thenAnswer((realInvocation) async => sentencesModels);

    var sentencesRepository = SentencesRepositoryImpl(sentencesLocalDatasource);

    var repositorySentences = await sentencesRepository.getSentences();

    expect(repositorySentences, sentences);
  });

  test('should return mapped favourites to Sentece object', () async {
    when(sentencesLocalDatasource.getFavourites()).thenAnswer((realInvocation) async => sentencesModels);

    var sentencesRepository = SentencesRepositoryImpl(sentencesLocalDatasource);

    var repositorySentences = await sentencesRepository.getFavourites();

    expect(repositorySentences, sentences);
  });

  test('should run prefillDatabase datasource method', () async {
    var sentencesRepository = SentencesRepositoryImpl(sentencesLocalDatasource);

    await sentencesRepository.prefillDatabase();

    verify(sentencesLocalDatasource.prefillDatabase());
  });

  test('should run deleteFavourite datasource method', () async {
    var sentencesRepository = SentencesRepositoryImpl(sentencesLocalDatasource);

    await sentencesRepository.deleteFavourite('');

    verify(sentencesLocalDatasource.deleteFavourite(''));
  });

  test('should run deleteSentence datasource method', () async {
    var sentencesRepository = SentencesRepositoryImpl(sentencesLocalDatasource);

    await sentencesRepository.deleteSentence('');

    verify(sentencesLocalDatasource.deleteSentence(''));
  });

  test('should run saveSentence datasource method', () async {
    var sentencesRepository = SentencesRepositoryImpl(sentencesLocalDatasource);

    await sentencesRepository.saveSentence('');

    verify(sentencesLocalDatasource.saveSentence(''));
  });
}
