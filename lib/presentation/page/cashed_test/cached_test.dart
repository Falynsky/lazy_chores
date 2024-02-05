import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CachedPage extends StatelessWidget {
  const CachedPage({super.key});

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
      body: const Text('Cached Page'),
    );
  }
}
