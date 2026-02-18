import 'package:flutter/material.dart';
import 'package:round_timer/features/workout/widgets/text_field_widget.dart';

class WorkoutSetupScreen extends StatelessWidget {
  const WorkoutSetupScreen({super.key});

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
            TextFieldWidget(label: "Workout Time", hint: '180'),
            TextFieldWidget(label: "Rest Time", hint: '30'),
            TextFieldWidget(label: "Rounds", hint: '6'),

            const Spacer(),

            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('START WORKOUT'),
                ),
            ),
            
          ],
        ),
      ),
    );
  }
}
