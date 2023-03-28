import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

abstract class Failure extends Equatable {}

// General failures
class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class NoInternetConnectionFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class CacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class UnImplementedFailure extends Failure {
  @override
  List<Object?> get props => [];
}
