import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class ScreenSize {
  static late MediaQueryData screenSize;

  static double getHeightPercent(final double percent) {
    return screenSize.size.height * percent;
  }

  static double getWidthPercent(final double percent) {
    return screenSize.size.width * percent;
  }

  EdgeInsets get padding => screenSize.padding;
}
