import 'package:flutter_test/flutter_test.dart';
import 'package:values_generator/features/data/models/local/sentence_entity.dart';
import 'package:values_generator/features/domain/entities/sentence.dart';

void main() {
  var dateTime = DateTime.now();

  var sentenceModel = SentenceEntity(
    uuid: '1',
    sentence: '-',
    dateTime: dateTime,
    isDeletable: true,
  );

  var sentence = Sentence(
    uuid: '1',
    sentence: '-',
    dateTime: dateTime,
    isDeletable: true,
  );

  test('should map sentence entity to sentence', () {
    expect(sentenceModel.toDomain(), sentence);
  });

  test('should map sentence to sentence entity', () {
    var mappedSentence = SentenceEntity.fromDomain(sentence);

    expect(mappedSentence.dateTime, sentence.dateTime);
    expect(mappedSentence.isDeletable, sentence.isDeletable);
    expect(mappedSentence.sentence, sentence.sentence);
    expect(mappedSentence.uuid, sentence.uuid);
  });
}
