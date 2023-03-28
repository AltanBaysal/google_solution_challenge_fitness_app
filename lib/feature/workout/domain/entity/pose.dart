import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

abstract class Pose {
  final Direction direction;
  final double accuracy;

  Pose({
    required this.direction,
    required this.accuracy,
  });
}
