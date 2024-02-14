import 'package:flutter/material.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:lazy_chores/core/di/di_config.dart';
import 'package:lazy_chores/presentation/navigation/main_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(
    HookedBlocConfigProvider(
      injector: () => getIt,
      child: const MainNavigation(),
    ),
  );
}
