import 'package:flutter/material.dart';
import 'package:round_timer/features/workout/model/workout_config.dart';
import 'package:round_timer/features/workout/model/workout_state.dart';

class WorkoutProvider extends ChangeNotifier {
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
}