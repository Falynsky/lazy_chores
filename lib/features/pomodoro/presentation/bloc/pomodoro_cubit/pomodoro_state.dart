import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_state.freezed.dart';
part 'pomodoro_state.g.dart';

@freezed
@JsonSerializable()
class PomodoroState with _$PomodoroState {
  const PomodoroState._();

  const factory PomodoroState({
    required int minutes,
    required int seconds,
    required bool isRunning,
  }) = _PomodoroState;

  factory PomodoroState.initial() => const PomodoroState(
        minutes: 25,
        seconds: 0,
        isRunning: false,
      );
}
