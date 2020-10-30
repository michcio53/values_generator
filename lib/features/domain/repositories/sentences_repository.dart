import 'package:values_generator/features/domain/entities/sentence.dart';

abstract class SentencesRepository {
  Future<void> prefillDatabase();

  Future<List<Sentence>> getSentences();

  Future<List<Sentence>> getFavourites();

  Future<void> saveFavourite(Sentence sentence);

  Future<void> saveSentence(String textSentece);

  Future<void> deleteFavourite(String uuid);

  Future<void> deleteSentence(String uuid);
}
