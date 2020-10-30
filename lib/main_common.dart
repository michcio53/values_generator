import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:values_generator/features/app.dart';
import 'package:values_generator/core/injection/injector.dart' as di;


Future<void> mainCommon(Environment environment) async {
  log('mainCommon: App started in ${environment.name} mode');

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await di.configureDependencies(environment);

  runApp(App());
}
