import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RouteArgumentProvider>(
          create: (_) => RouteArgumentProvider(),
        )
      ],
      child: MaterialApp(
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
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.transparant,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
              statusBarColor: AppColors.transparant,
            ),
          ),
        ),
      ),
    );
  }
}
