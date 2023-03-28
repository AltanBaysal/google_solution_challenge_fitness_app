import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class GlobalContextKey {
  final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

  static GlobalContextKey instance = GlobalContextKey._init();
  GlobalContextKey._init();
}
