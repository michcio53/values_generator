import 'package:values_generator/core/errors/failure.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class DatabaseGenericFailure extends Failure {
  DatabaseGenericFailure() : super(LocaleKeys.database_error.tr());
}
