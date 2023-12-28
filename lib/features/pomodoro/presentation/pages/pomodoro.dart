import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Pomodoro extends HookWidget {
  static const int _initialValue = 1 * 60; // 25 minutes in seconds
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _timer = useState(_initialValue);
    final _isRunning = useState(false);

    void startTimer() {
      _isRunning.value = true;
    }

    void stopTimer() {
      _isRunning.value = false;
      _timer.value = _initialValue;
    }

    useEffect(() {
      Timer? timer;

      if (_isRunning.value && _timer.value > 0) {
        timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          _timer.value = _timer.value - 1;
          if (_timer.value == 0) {
            stopTimer();
          }
        });
      }

      return timer?.cancel;
    }, [_isRunning.value]);


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
          formatTime(_timer.value),
          style: TextStyle(
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