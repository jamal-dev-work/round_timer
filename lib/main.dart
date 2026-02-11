import 'package:flutter/material.dart';
import 'package:round_timer/features/workout/view/setup_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorkoutSetupScreen()
    );
  }
}