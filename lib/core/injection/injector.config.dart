// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:math';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import 'build_variants.dart';
import 'modules/database_modules.dart';
import 'modules/random_nums_module.dart';
import '../../features/data/datasources/local/sentences_local_datasource.dart';
import '../../features/domain/repositories/sentences_repository.dart';
import '../../features/data/repositories/sentences_repository_impl.dart';
import 'modules/uuid_module.dart';

/// Environment names
const _production = 'production';
const _development = 'development';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final randomModule = _$RandomModule();
  final uuidModule = _$UuidModule();
  gh.factory<BuildVariant>(() => ProductionBuildVariant(),
      registerFor: {_production});
  gh.factory<BuildVariant>(() => DevelopmentBuildVariant(),
      registerFor: {_development});
  gh.lazySingleton<Random>(() => randomModule.random);
  gh.lazySingleton<Uuid>(() => uuidModule.uuid);
  gh.lazySingleton<SentencesLocalDatasource>(() => SentencesLocalDatasourceImpl(
        get<DatabaseModules>(),
        get<Uuid>(),
        get<BuildVariant>(),
      ));
  gh.lazySingleton<SentencesRepository>(
      () => SentencesRepositoryImpl(get<SentencesLocalDatasource>()));

  // Eager singletons must be registered in the right order
  gh.singleton<DatabaseModules>(DatabaseModules());
  return get;
}

class _$RandomModule extends RandomModule {}

class _$UuidModule extends UuidModule {}
