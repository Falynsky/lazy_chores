import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_state.freezed.dart';

@freezed
class PomodoroState with _$PomodoroState {
  factory PomodoroState.initial() = _Initial;

  factory PomodoroState.count({
    required int seconds,
    @Default(true) bool isRunning,
  }) = _Count;

  factory PomodoroState.stop({
    @Default(false) bool isRunning,
  }) = _Stop;
}
