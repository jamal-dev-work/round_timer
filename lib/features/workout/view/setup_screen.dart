import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:round_timer/features/workout/model/workout_config.dart';
// import 'package:round_timer/features/workout/provider/workout_provider.dart';
// import 'package:round_timer/features/workout/view/timer_screen.dart';
import 'package:round_timer/features/workout/widgets/text_field_widget.dart';

class WorkoutSetupScreen extends StatelessWidget {
  WorkoutSetupScreen({super.key});
  final TextEditingController workoutController = TextEditingController();
  final TextEditingController restController = TextEditingController();
  final TextEditingController roundsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('Workout Setup'))),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Prepare Your Workout',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            TextFieldWidget(label: "Workout Time", hint: '180' , controller: workoutController),
            TextFieldWidget(label: "Rest Time", hint: '30', controller: restController),
            TextFieldWidget(label: "Rounds", hint: '6', controller: roundsController),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () 
                  {
                  //   final config = WorkoutConfig(
                  //   workoutSeconds: int.parse(workoutController.text),
                  //   restSeconds: int.parse(restController.text),
                  //   rounds: int.parse(roundsController.text),
                  // );
                  // context.read<WorkoutProvider>().setup(config);

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => const WorkoutTimerScreen(),
                  //   ),
                  // );
                  },
                  child: const Text('START WORKOUT'),
                ),
            ),
            
          ],
        ),
      ),
    );
  }
}
