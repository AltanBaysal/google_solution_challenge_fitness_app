import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

late List<CameraDescription> cameras;
TFLiteDataSourceImpl tfLiteDataSource = TFLiteDataSourceImpl();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await tfLiteDataSource.loadModel();
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
      initialRoute: AppRoutes.workout,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
