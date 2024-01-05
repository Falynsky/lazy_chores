import 'package:bloc/bloc.dart';
import 'package:lazy_chores/features/pomodoro/presentation/bloc/pomodoro_cubit/pomodoro_state.dart';

class PomodoroCubit extends Cubit<PomodoroState> {
  PomodoroCubit() : super(PomodoroState.initial());

  void startPomodoro() {
  }

  void resetPomodoro() {
  }

  void pausePomodoro() {
  }

  void resumePomodoro() {
  }
}
