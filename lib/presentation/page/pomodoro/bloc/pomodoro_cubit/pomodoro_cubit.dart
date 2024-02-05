import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lazy_chores/presentation/page/pomodoro/bloc/pomodoro_cubit/pomodoro_state.dart';

class PomodoroCubit extends Cubit<PomodoroState> {
  PomodoroCubit(this.initialSeconds) : super(PomodoroState.initial());

  late StreamSubscription<int> _timerSubscription;
  final int initialSeconds;

  void startTimer() {
    emit(PomodoroState.count(seconds: initialSeconds));
    _timerSubscription = Stream.periodic(const Duration(seconds: 1), (count) {
      return initialSeconds - count;
    }).listen((value) {
      if (value != 0) {
        emit(
          PomodoroState.count(seconds: value),
        );
      } else {
        stopTimer();
      }
    });
  }

  void stopTimer() {
    _timerSubscription.cancel();
    emit(PomodoroState.stop());
  }

  void resetPomodoro() {
    _timerSubscription.cancel();
    startTimer();
  }

  @override
  Future<void> close() {
    _timerSubscription.cancel();
    return super.close();
  }
}
