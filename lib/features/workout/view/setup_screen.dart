import 'package:flutter/material.dart';

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
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Workout Time",
                hintText: '180',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Rest Time",
                hintText: '30',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Rounds",
                hintText: '6',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            // const Text('Workout Time'),
            // const TextField(
            //   keyboardType: TextInputType.number,
            //   decoration: InputDecoration(hintText: '180'),
            // ),

            // const SizedBox(height: 16),
            // const Text('Rest Time'),
            // const TextField(
            //   keyboardType: TextInputType.number,
            //   decoration: InputDecoration(hintText: '60'),
            // ),

            // const SizedBox(height: 16),
            // const Text('Rounds'),
            // const TextField(
            //   keyboardType: TextInputType.number,
            //   decoration: InputDecoration(hintText: '5'),
            // ),

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
