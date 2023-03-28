import 'package:dartz/dartz.dart';
import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

abstract class PoseTrackingRepository {
  Future<Either<Failure, OverHeadDumbellPress>> trackOverHeadDumbellPress(
    PoseParam params,
  );
}
