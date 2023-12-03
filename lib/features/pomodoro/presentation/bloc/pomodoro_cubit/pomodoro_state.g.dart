// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PomodoroState _$PomodoroStateFromJson(Map<String, dynamic> json) =>
    PomodoroState(
      minutes: json['minutes'] as int,
      seconds: json['seconds'] as int,
      isRunning: json['isRunning'] as bool,
    );

Map<String, dynamic> _$PomodoroStateToJson(PomodoroState instance) =>
    <String, dynamic>{
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'isRunning': instance.isRunning,
    };
