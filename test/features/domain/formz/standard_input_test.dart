import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:values_generator/core/errors/input_failures.dart';
import 'package:values_generator/features/domain/formz/standard_input.dart';
import 'package:easy_localization/src/translations.dart';
import 'package:easy_localization/src/localization.dart';
import 'package:values_generator/features/presentation/constants/presentation_constatns.dart';

class TranslationsMock extends Mock implements Translations {}

void main() {
  setUp(() {
    var translations = TranslationsMock();

    when(translations.get(any)).thenReturn('');

    Localization.load(PresentationConstants.usLocale, translations: translations);
  });

  test('when standard input empty, should emit failure', () {
    var standardInput = const StandardTextInput.dirty(value: '');

    expect(standardInput.error, isA<ToShortTextFailure>());
  });
}
