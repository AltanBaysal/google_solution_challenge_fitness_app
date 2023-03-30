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
      ResolutionPreset.max,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.bgra8888,
    );
    /*
    cameraController.initialize().then((value) {
      setState(
        () {},
      );
      cameraController.startImageStream((image) async {
        final byteMap = image.planes.map((plane) {
          return plane.bytes;
        }).toList();

        try {
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
        } catch (e) {
          print(e.toString() +
              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaas");
        }

        await Future.delayed(Duration(seconds: 5));
      });
    });
*/
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
