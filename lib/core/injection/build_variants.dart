import 'package:injectable/injectable.dart';
import 'injector.dart';

abstract class BuildVariant {
  String valuesPath();
}

@production
@Injectable(as: BuildVariant)
class ProductionBuildVariant implements BuildVariant {
  @override
  String valuesPath() => 'assets/json/values.json';
}

@development
@Injectable(as: BuildVariant)
class DevelopmentBuildVariant implements BuildVariant {
  @override
  String valuesPath() => 'assets/json/values.json';
}
