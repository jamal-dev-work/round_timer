enum WorkoutPhase {
  workout,
  rest,
  finished,
}

class WorkoutState {
  final int currentRound;
  final int remainingSeconds;
  final WorkoutPhase phase;
  final bool isRunning;

  const WorkoutState({
    required this.currentRound,
    required this.remainingSeconds,
    required this.phase,
    required this.isRunning,
  });

  factory WorkoutState.initial() {
    return const WorkoutState(
      currentRound: 1,
      remainingSeconds: 0,
      phase: WorkoutPhase.workout,
      isRunning: false,
    );
  }

  WorkoutState copyWith({
    int? currentRound,
    int? remainingSeconds,
    WorkoutPhase? phase,
    bool? isRunning,
  }) {
    return WorkoutState(
      currentRound: currentRound ?? this.currentRound,
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
      phase: phase ?? this.phase,
      isRunning: isRunning ?? this.isRunning,
    );
  }
}
