import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lazy_chores/core/di/di_config.config.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
void configureDependencies() => getIt.init();
