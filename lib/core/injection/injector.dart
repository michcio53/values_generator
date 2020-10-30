import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

const development = Environment('development');
const production = Environment('production');

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies(Environment environment) => $initGetIt(
      getIt,
      environment: environment.name,
    );
