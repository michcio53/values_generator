import 'package:formz/formz.dart';
import 'package:values_generator/core/errors/failure.dart';
import 'package:values_generator/core/errors/input_failures.dart';

class StandardTextInput extends FormzInput<String, Failure> {
  const StandardTextInput.pure() : super.pure('');

  const StandardTextInput.dirty({String value = ''}) : super.dirty(value);

  @override
  Failure validator(String value) {
    return value.trim().isNotEmpty ? null : ToShortTextFailure();
  }
}
