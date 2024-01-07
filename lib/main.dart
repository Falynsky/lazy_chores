import 'package:flutter/material.dart';
import 'package:lazy_chores/features/home_screen/presentation/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
