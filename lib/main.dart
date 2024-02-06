import 'package:flutter/material.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:lazy_chores/core/di/di_config.dart';
import 'package:lazy_chores/presentation/navigation/main_navigation.dart';

void main() async {
  await configureDependencies();

  runApp(
    HookedBlocConfigProvider(
      injector: () => getIt,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainNavigation();
  }
}
