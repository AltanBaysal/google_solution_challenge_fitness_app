import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case AppRoutes.categories:
        return MaterialPageRoute(
          builder: (_) => const CategoriesScreen(),
        );

      case AppRoutes.welcome1:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen1(),
        );

      case AppRoutes.welcome2:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen2(),
        );

      case AppRoutes.welcome3:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen3(),
        );

      case AppRoutes.fullExercise:
        return MaterialPageRoute(
          builder: (_) => const FullExerciseScreen(),
        );

      case AppRoutes.startExercise:
        return MaterialPageRoute(
          builder: (_) => const StartExercise(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const ErrorPage();
    });
  }
}
