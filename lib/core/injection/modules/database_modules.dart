import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:hive/src/hive_impl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:values_generator/features/data/constants/database_keys.dart';
import 'package:values_generator/features/data/models/local/sentence_entity.dart';

@singleton
class DatabaseModules {
  @preResolve
  @singleton
  Future<HiveInterface> get hive async {
    var dir = await getApplicationDocumentsDirectory();
    var hive = HiveImpl();
    hive.init(dir.path);
    hive.registerAdapter(SentenceEntityAdapter());

    return hive;
  }

  @preResolve
  @singleton
  Future<Box> sentencesBox() async => (await hive).openBox(DatabaseKeys.sentences);

  @preResolve
  @singleton
  Future<Box> favouritesBox() async => (await hive).openBox(DatabaseKeys.favourites);
}
