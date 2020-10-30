import 'package:injectable/injectable.dart';
import 'package:values_generator/features/data/datasources/local/sentences_local_datasource.dart';
import 'package:values_generator/features/data/models/local/sentence_entity.dart';
import 'package:values_generator/features/domain/entities/sentence.dart';
import 'package:values_generator/features/domain/repositories/sentences_repository.dart';

@LazySingleton(as: SentencesRepository)
class SentencesRepositoryImpl implements SentencesRepository {
  SentencesRepositoryImpl(this._sentencesLocalDatasource);

  final SentencesLocalDatasource _sentencesLocalDatasource;

  @override
  Future<void> prefillDatabase() async {
    return _sentencesLocalDatasource.prefillDatabase();
  }

  @override
  Future<List<Sentence>> getSentences() async {
    return (await _sentencesLocalDatasource.getSentences()).map((e) => e.toDomain()).toList();
  }

  @override
  Future<List<Sentence>> getFavourites() async {
    return (await _sentencesLocalDatasource.getFavourites()).map((e) => e.toDomain()).toList();
  }

  @override
  Future<void> saveFavourite(Sentence sentence) async {
    return _sentencesLocalDatasource.saveFavourite(SentenceEntity.fromDomain(sentence));
  }

  @override
  Future<void> saveSentence(String textSentence) async {
    return _sentencesLocalDatasource.saveSentence(textSentence);
  }

  @override
  Future<void> deleteFavourite(String uuid) async {
    return _sentencesLocalDatasource.deleteFavourite(uuid);
  }

  @override
  Future<void> deleteSentence(String uuid) async {
    return _sentencesLocalDatasource.deleteSentence(uuid);
  }
}
