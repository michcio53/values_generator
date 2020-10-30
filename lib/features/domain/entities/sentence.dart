import 'package:freezed_annotation/freezed_annotation.dart';

part 'sentence.freezed.dart';

@freezed
abstract class Sentence with _$Sentence {
  factory Sentence({
    String uuid,
    String sentence,
    DateTime dateTime,
    bool isDeletable,
  }) = _Sentence;
}
