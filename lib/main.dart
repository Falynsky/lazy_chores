import 'package:flutter/material.dart';
import 'package:lazy_chores/presentation/navigation/main_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainNavigation();
  }
}
