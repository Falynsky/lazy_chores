import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_chores/presentation/common/gen/assets.gen.dart';
import 'package:lazy_chores/presentation/page/pomodoro/bloc/pomodoro_cubit/pomodoro_cubit.dart';
import 'package:lazy_chores/presentation/page/pomodoro/bloc/pomodoro_cubit/pomodoro_state.dart';
import 'package:lazy_chores/utils/intl_util.dart';

class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  static const int _initialValue = 1 * 60;
  late PomodoroCubit pomodoroCubit;
  late int seconds;
  late bool isRunning;

  @override
  void initState() {
    super.initState();
    pomodoroCubit = PomodoroCubit(_initialValue);
    seconds = _initialValue;
    isRunning = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Assets.images.tomato.image(),
        ),
        const SizedBox(height: 20),
        BlocListener<PomodoroCubit, PomodoroState>(
          bloc: pomodoroCubit,
          listener: (context, state) {
            state.maybeWhen(
              count: (currentSeconds, isRunning) {
                if (seconds == 0) {
                  this.isRunning = isRunning;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(context.l10n.pomodoro_finished),
                    ),
                  );
                } else {
                  setState(() {
                    this.isRunning = isRunning;
                    seconds = currentSeconds;
                  });
                }
              },
              stop: (isRunning) {
                setState(() {
                  this.isRunning = isRunning;
                  seconds = _initialValue;
                });
              },
              orElse: () {},
            );
          },
          child: Text(
            formatTime(seconds),
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: isRunning
                  ? null
                  : () {
                      ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                          content: Text(context.l10n.pomodoro_started),
                        ),
                      );
                      pomodoroCubit.startTimer();
                    },
              child: Text(context.l10n.start),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: !isRunning
                  ? null
                  : () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(context.l10n.pomodoro_stopped),
                        ),
                      );
                      pomodoroCubit.stopTimer();
                    },
              child: Text(context.l10n.stop),
            ),
          ],
        ),
      ],
    );
  }

  String formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final remainingSeconds = (seconds % 60).toString().padLeft(2, '0');

    return '$minutes:$remainingSeconds';
  }
}
