import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_chores/presentation/page/pomodoro/widgets/pomodoro.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomodoro'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () => context.go('/'),
        ),
      ),
      body: const Pomodoro(),
    );
  }
}
