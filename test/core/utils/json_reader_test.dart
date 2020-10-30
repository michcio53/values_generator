import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:values_generator/core/utils/json_reader.dart';

void main() {
  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();

    ServicesBinding.instance.defaultBinaryMessenger.setMockMessageHandler('flutter/assets', (message) {
      var key = utf8.decode(message.buffer.asUint8List());
      var file = File(key);
      var encoded = utf8.encoder.convert(file.readAsStringSync());
      return Future.value(encoded.buffer.asByteData());
    });
  });

  test('When succeed should return list of string', () async {
    var dir = Directory.current.path;
    if (dir.endsWith('/test')) {
      dir = dir.replaceAll('/test', '');
    }

    var list = await JsonReader.initialize('$dir/test/fixtures/test_values.json');
    expect(list, ['test1', 'test2', 'test3']);
  });
}
