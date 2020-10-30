import 'package:hive/hive.dart';
import 'package:values_generator/features/domain/entities/sentence.dart';

part 'sentence_entity.g.dart';

@HiveType(typeId: 0)
class SentenceEntity extends HiveObject {
  SentenceEntity({
    this.uuid,
    this.sentence,
    this.dateTime,
    this.isDeletable,
  });

  factory SentenceEntity.fromDomain(Sentence sentence) {
    return SentenceEntity(
      dateTime: sentence.dateTime,
      uuid: sentence.uuid,
      isDeletable: sentence.isDeletable,
      sentence: sentence.sentence,
    );
  }

  @HiveField(0)
  final String uuid;
  @HiveField(1)
  final String sentence;
  @HiveField(2)
  final DateTime dateTime;
  @HiveField(3)
  final bool isDeletable;

  Sentence toDomain() {
    return Sentence(
      uuid: uuid,
      sentence: sentence,
      dateTime: dateTime,
      isDeletable: isDeletable,
    );
  }
}
