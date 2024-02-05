// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PomodoroTimer extends HookWidget {
  const PomodoroTimer({super.key});

  @override
  Widget build(BuildContext context) {
     useAnimationController(duration: const Duration(seconds: 2));
    return const Text(
      // TODO(Falynsky): zrobić z tego osobny widget może hooked który będzie odświeżał się co sekundę i aktulizował timer
      '25:00',
      style: TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
