import 'package:flutter/material.dart';

class WorkoutSetupScreen extends StatelessWidget {
  const WorkoutSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workout Setup')),
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

            const Text('Workout Time (sec)'),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'e.g. 180'),
            ),

            const SizedBox(height: 16),
            const Text('Rest Time (sec)'),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'e.g. 60'),
            ),

            const SizedBox(height: 16),
            const Text('Rounds'),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'e.g. 5'),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
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
