import 'package:flutter/material.dart';
import '../widgets/pomodoro_timer.dart';
import '../widgets/bunny_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pomobunny'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BunnyWidget(),
          PomodoroTimer(),
        ],
      ),
    );
  }
}
