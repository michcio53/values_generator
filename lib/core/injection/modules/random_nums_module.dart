import 'dart:math';

import 'package:injectable/injectable.dart';

@module
abstract class RandomModule {
  @lazySingleton
  Random get random => Random();
}
