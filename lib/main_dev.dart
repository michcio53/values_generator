import 'package:flutter/widgets.dart';
import 'package:values_generator/main_common.dart';
import 'package:values_generator/core/injection/injector.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await mainCommon(di.development);
}
