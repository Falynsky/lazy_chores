import 'package:flutter/material.dart';

class Pomodoro extends StatelessWidget{
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomodoro'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Pomodoro'),
      ),
    );
  }
}