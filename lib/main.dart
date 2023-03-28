import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        ScreenSize.screenSize = MediaQuery.of(context);
        return child ?? const ErrorPage();
      },
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      title: AppTexts.appName,
      navigatorKey: GlobalContextKey.instance.globalKey,
      initialRoute: AppRoutes.splash,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
