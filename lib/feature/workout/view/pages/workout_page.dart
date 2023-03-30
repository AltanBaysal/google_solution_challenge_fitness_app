import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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

    cameraController.initialize().then((value) {
      setState(
        () {},
      );
      /*
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
      });*/
    });

    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: ScreenSize.getHeightPercent(1),
            child: CameraPreview(cameraController),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: ScreenSize.getHeightPercent(.06),
            ),
            height: ScreenSize.getHeightPercent(1),
            width: ScreenSize.getWidthPercent(1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  alignment: Alignment.center,
                  width: ScreenSize.getWidthPercent(1),
                  color: AppColors.transparantBlack,
                  child: Text(
                    AppTexts.count + " 3",
                    style: AppTextStyles.title30BoldBlack.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                CircularPercentIndicator(
                  radius: 80,
                  lineWidth: 15,
                  percent: .675,
                  center: new Text(
                    "67.5%",
                    style: AppTextStyles.title22Bold,
                  ),
                  progressColor: Colors.blue,
                  backgroundColor: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
