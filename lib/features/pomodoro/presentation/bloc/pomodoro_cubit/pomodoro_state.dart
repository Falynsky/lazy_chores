import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_state.freezed.dart';

@freezed
class PomodoroState with _$PomodoroState {
  const factory PomodoroState({
    required int minutes,
    required int seconds,
    required bool isRunning,
  }) = _PomodoroState;

  const PomodoroState._();

  factory PomodoroState.initial() => const PomodoroState(
        minutes: 25,
        seconds: 0,
        isRunning: false,
      );
}
