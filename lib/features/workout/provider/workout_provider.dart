import 'package:flutter/material.dart';
import 'package:round_timer/features/workout/model/workout_config.dart';
import 'package:round_timer/features/workout/model/workout_state.dart';

class WorkoutProvider extends ChangeNotifier {
  int number1 = 0;
  int number2 = 0;
  int number3 = 0;
  // late WorkoutConfig _config;
  // Timer? _timer;
  WorkoutState _state = WorkoutState(
    currentRound: 1,
    remainingSeconds: 0,
    phase: WorkoutPhase.workout,
    isRunning: false,
  );

  WorkoutState get state => _state;

  void setup(WorkoutConfig config) {
    // _config = config;
    _state = WorkoutState(
      currentRound: 1,
      remainingSeconds: config.workoutSeconds,
      phase: WorkoutPhase.workout,
      isRunning: false,
    );
    notifyListeners();
  }
  void setNumbers(int n1, int n2 , int n3) {
    number1 = n1;
    number2 = n2;
    number3 = n3;
    notifyListeners();
  }
}