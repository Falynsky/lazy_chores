import 'package:cached_annotation/cached_annotation.dart';
import 'package:flutter/material.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:lazy_chores/core/di/di_config.dart';
import 'package:lazy_chores/data/artist/my_external_storage.dart';
import 'package:lazy_chores/presentation/navigation/main_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  PersistentStorageHolder.storage = MyExternalStorage();

  await configureDependencies();

  runApp(
    HookedBlocConfigProvider(
      injector: () => getIt,
      child: const MainNavigation(),
    ),
  );
}
