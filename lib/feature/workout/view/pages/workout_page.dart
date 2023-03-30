import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  late CameraController cameraController;

  @override
  void initState() {
    print(cameras);
    cameraController = CameraController(
      cameras[1],
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    cameraController.initialize().then((value) {
      setState(
        () {},
      );
      cameraController.startImageStream((image) async {
        print(image.planes.length);
        setState(() {});
        final byteMap = image.planes.map((plane) {
          return plane.bytes;
        }).toList();
        if (byteMap.length > 1) {
          final predictions = await tfLiteDataSource.runOnFrame(
            byteMap,
            imageHeight: 192,
            imageWidth: 192,
          );

          if (predictions != null) {
            predictions.forEach((element) {
              print(element);
            });
          }
          RouteManager.pushNamed(AppRoutes.welcome1);
        }
      });
    });

    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraPreview(cameraController),
    );
  }
}
