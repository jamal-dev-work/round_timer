import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:round_timer/features/workout/provider/workout_provider.dart';
import 'package:round_timer/features/workout/view/setup_screen.dart';

void main() 
{
//   ChangeNotifierProvider(
//   create: (_) => WorkoutProvider(),
//   child: const MyApp(),
// );
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