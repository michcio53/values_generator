import 'dart:convert';
import 'package:flutter/services.dart';

class JsonReader {
  static Future<List<String>> initialize(String valuesPath) async {
    var configString = await rootBundle.loadString(valuesPath);
    return (json.decode(configString) as List).map((e) => e as String).toList();
  }
}
