// import 'package:flutter/material.dart';

// class WorkoutTimerScreen extends StatelessWidget {
//   const WorkoutTimerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Text(
//               'TRAIN',
//               style: TextStyle(
//                 color: Colors.green,
//                 fontSize: 32,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 16),
//             Text(
//               '180',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 72,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Round 1 / 5',
//               style: TextStyle(color: Colors.white54),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
// import '../models/workout_config.dart';
// import '../widgets/circular_timer.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  // final WorkoutConfig config;
  // const TimerScreen({super.key, required this.config});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  late int currentTime;
  late int totalTime;
  bool isWorkout = true;
  int round = 1;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startWorkout();
  }

  void startWorkout() {
    isWorkout = true;
    // totalTime = widget.config.workoutSeconds;
    startTimer();
  }

  void startRest() {
    isWorkout = false;
    // totalTime = widget.config.restSeconds;
    startTimer();
  }

  void startTimer() {
    currentTime = totalTime;
    timer?.cancel();

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() {
        currentTime--;
        if (currentTime == 0) {
          t.cancel();
          if (isWorkout) {
            startRest();
          } else {
            if 
            (
              // round < widget.config.rounds 
              true
            ) {
              round++;
              startWorkout();
            }
          }
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isWorkout ? Colors.green : Colors.blueGrey,
      body: Center(
        child: CircularTimer(
          time: currentTime,
          progress: currentTime / totalTime,
          isWorkout: isWorkout,
        ),
      ),
    );
  }
}


class CircularTimer extends StatelessWidget {
  final int time;
  final double progress;
  final bool isWorkout;

  const CircularTimer({
    super.key,
    required this.time,
    required this.progress,
    required this.isWorkout,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 220,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: progress,
            strokeWidth: 10,
            backgroundColor: Colors.white24,
            color: isWorkout ? Colors.red : Colors.yellow,
          ),
          Text(
            '$time',
            style: const TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}