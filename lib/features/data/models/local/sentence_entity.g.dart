// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SentenceEntityAdapter extends TypeAdapter<SentenceEntity> {
  @override
  final int typeId = 0;

  @override
  SentenceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SentenceEntity(
      uuid: fields[0] as String,
      sentence: fields[1] as String,
      dateTime: fields[2] as DateTime,
      isDeletable: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, SentenceEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.sentence)
      ..writeByte(2)
      ..write(obj.dateTime)
      ..writeByte(3)
      ..write(obj.isDeletable);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SentenceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
