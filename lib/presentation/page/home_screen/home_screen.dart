import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_chores/utils/intl_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.home),
        actions: [
          IconButton(
            icon: const Icon(Icons.timer),
            onPressed: () => context.push('/pomodoro'),
          ),
          IconButton(
            icon: const Icon(Icons.call_split_rounded),
            onPressed: () => context.go('/artist'),
          ),
        ],
      ),
    );
  }
}
