import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class RouteArgumentProvider extends ChangeNotifier {
  Object? object;

  void setArguments(Object value) {
    object = value;
    notifyListeners();
  }
}
