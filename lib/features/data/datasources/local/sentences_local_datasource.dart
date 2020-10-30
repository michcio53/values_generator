import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:values_generator/core/injection/build_variants.dart';
import 'package:values_generator/core/errors/database_failure.dart';
import 'package:values_generator/core/errors/reader_failures.dart';
import 'package:values_generator/core/injection/modules/database_modules.dart';
import 'package:values_generator/core/utils/json_reader.dart';
import 'package:values_generator/features/data/models/local/sentence_entity.dart';
import 'package:flutter/material.dart';

/// Used to store sentencs in database
abstract class SentencesLocalDatasource {
  /// Prefills database with values from given JSON,
  /// when ther are no items in database
  ///
  /// Throws [FormatFailure] on bad JSON formatting
  /// Throws [ReaderFailure] on absence of json file
  /// Throws [DatabaseGenericFailure] on database error
  Future<void> prefillDatabase();

  /// Returns saved sentences
  /// Throws [DatabaseGenericFailure] on database error
  Future<List<SentenceEntity>> getSentences();

  /// Returns saved favourites
  ///
  /// Throws [DatabaseGenericFailure] on database error
  Future<List<SentenceEntity>> getFavourites();

  /// Saves favourite to db
  ///
  /// Throws [DatabaseGenericFailure] on database error
  Future<void> saveFavourite(SentenceEntity sentenceEntity);

  /// Saves given sentence to store as a object in db
  ///
  /// Throws [DatabaseGenericFailure] on database error
  Future<void> saveSentence(String textSentence);

  /// Deletes favoutire sentence with given [uuid],
  /// If [uuid] does not exist, nothing happens.
  ///
  /// Throws [DatabaseGenericFailure] on database error
  Future<void> deleteFavourite(String uuid);

  /// Deletes sentence with given [uuid],
  /// If [uuid] does not exist, nothing happens.
  ///
  /// Throws [DatabaseGenericFailure] on database error
  Future<void> deleteSentence(String uuid);
}

@LazySingleton(as: SentencesLocalDatasource)
class SentencesLocalDatasourceImpl implements SentencesLocalDatasource {
  SentencesLocalDatasourceImpl(
    this._databaseModules,
    this._uuid,
    this.buildVariant,
  );

  final DatabaseModules _databaseModules;
  final Uuid _uuid;
  final BuildVariant buildVariant;

  @override
  Future<void> prefillDatabase() async {
    var box = await _databaseModules.sentencesBox();

    if (box.isEmpty) {
      try {
        var values = await JsonReader.initialize(buildVariant.valuesPath());

        for (var element in values) {
          var uuid = _uuid.v4();
          await box.put(
            uuid,
            SentenceEntity(
              uuid: uuid,
              sentence: element,
              dateTime: DateTime.now(),
              isDeletable: false,
            ),
          );
        }
      } on FormatException catch (_) {
        throw FormatFailure();
      } on FlutterError catch (e) {
        throw ReaderFailure(e.message);
      } on HiveError catch (e) {
        log('prefillDatabase: ${e.message}');
        throw DatabaseGenericFailure();
      }
    }
  }

  @override
  Future<List<SentenceEntity>> getSentences() async {
    try {
      var box = await _databaseModules.sentencesBox();

      return box.values.map((e) => (e as SentenceEntity)).toList();
    } on HiveError catch (e) {
      log('getSentences: ${e.message}');
      throw DatabaseGenericFailure();
    }
  }

  @override
  Future<List<SentenceEntity>> getFavourites() async {
    try {
      var box = await _databaseModules.favouritesBox();

      return box.values.map((e) => (e as SentenceEntity)).toList();
    } on HiveError catch (e) {
      log('getFavourites: ${e.message}');
      throw DatabaseGenericFailure();
    }
  }

  @override
  Future<void> saveFavourite(SentenceEntity sentenceEntity) async {
    try {
      var box = await _databaseModules.favouritesBox();

      await box.put(
        sentenceEntity.uuid,
        sentenceEntity,
      );
    } on HiveError catch (e) {
      log('saveFavourite: ${e.message}');
      throw DatabaseGenericFailure();
    }
  }

  @override
  Future<void> saveSentence(String textSentence) async {
    try {
      var box = await _databaseModules.sentencesBox();
      var uuid = _uuid.v4();

      await box.put(
        uuid,
        SentenceEntity(
          dateTime: DateTime.now(),
          uuid: uuid,
          sentence: textSentence,
          isDeletable: true,
        ),
      );
    } on HiveError catch (e) {
      log('saveSentence: ${e.message}');
      throw DatabaseGenericFailure();
    }
  }

  @override
  Future<void> deleteFavourite(String uuid) async {
    try {
      var box = await _databaseModules.favouritesBox();

      await box.delete(uuid);
    } on HiveError catch (e) {
      log('deleteFavourite: ${e.message}');
      throw DatabaseGenericFailure();
    }
  }

  @override
  Future<void> deleteSentence(String uuid) async {
    try {
      var box = await _databaseModules.sentencesBox();

      await box.delete(uuid);
    } on HiveError catch (e) {
      log('deleteSentence: ${e.message}');
      throw DatabaseGenericFailure();
    }
  }
}
