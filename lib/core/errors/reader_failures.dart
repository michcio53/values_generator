import 'package:values_generator/core/errors/failure.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:values_generator/generated/locale_keys.g.dart';

class ReaderFailure extends Failure {
  ReaderFailure(String message) : super(message);
}

class FormatFailure extends Failure {
  FormatFailure() : super(LocaleKeys.cannot_read_start_values.tr());
}
