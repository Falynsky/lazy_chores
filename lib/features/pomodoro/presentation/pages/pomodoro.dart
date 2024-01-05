import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Pomodoro extends HookWidget {
  const Pomodoro({super.key});

  static const int _initialValue = 1 * 60;

  @override
  Widget build(BuildContext context) {
    final timer0 = useState(_initialValue);
    final isRunning = useState(false);

    void startTimer() {
      isRunning.value = true;
    }

    void stopTimer() {
      isRunning.value = false;
      timer0.value = _initialValue;
    }

    useEffect(
      () {
        Timer? timer;

        if (isRunning.value && timer0.value > 0) {
          timer = Timer.periodic(const Duration(seconds: 1), (timer) {
            timer0.value = timer0.value - 1;
            if (timer0.value == 0) {
              stopTimer();
            }
          });
        }

        return timer?.cancel;
      },
      [isRunning.value],
    );

    String formatTime(int seconds) {
      final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
      final remainingSeconds = (seconds % 60).toString().padLeft(2, '0');
      return '$minutes:$remainingSeconds';
    }

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Image(
            image: AssetImage('assets/tomato.png'),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          formatTime(timer0.value),
          style: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: startTimer,
              child: const Text('Start'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: stopTimer,
              child: const Text('Stop'),
            ),
          ],
        ),
      ],
    );
  }
}
