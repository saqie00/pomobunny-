import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(PomobunnyApp());
}

class PomobunnyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomobunny',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
