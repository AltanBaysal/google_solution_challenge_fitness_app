import 'package:dartz/dartz.dart';
import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class OverHeadDumbellPressUsecase
    implements UseCase<OverHeadDumbellPress, PoseParam> {
  final PoseTrackingRepository _poseTrackingRepository;

  OverHeadDumbellPressUsecase(this._poseTrackingRepository);
  @override
  Future<Either<Failure, OverHeadDumbellPress>> call(PoseParam params) {
    return _poseTrackingRepository.trackOverHeadDumbellPress(params);
  }
}
