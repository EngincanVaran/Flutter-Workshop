import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Habit Tracker',
      home: HomePage(),
    );
  }
}
