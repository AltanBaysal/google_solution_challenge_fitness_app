import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';
import 'package:google_solution_challenge_fitness_app/core/constants/assets_paths/tflite_paths.dart';

//TODO düzenlenecek
abstract class TfLiteDataSource {}

class TFLiteDataSourceImpl implements TfLiteDataSource {
  String? res;

  Future<void> loadModel() async {
    print("asdasdasdasdas");
    try {
      res = await Tflite.loadModel(
        model: TFlitePaths.moveNetLighting,
      );
      print(res);
    } catch (e) {
      print(e);
    }
  }

  Future<void> close() async {
    return Tflite.close();
  }

  Future<List<dynamic>?> runOnFrame(
    List<Uint8List> bytesList, {
    int imageHeight = 1280,
    int imageWidth = 720,
    double imageMean = 127.5,
    double imageStd = 127.5,
    int rotation = 90,
    int numResults = 2,
    double threshold = 0.1,
    int nmsRadius = 20,
    bool asynch = true,
  }) {
    return Tflite.runPoseNetOnFrame(
      bytesList: bytesList,
      imageHeight: imageHeight,
      imageWidth: imageWidth,
      imageMean: imageMean,
      imageStd: imageStd,
      rotation: rotation,
      numResults: numResults,
      threshold: threshold,
      nmsRadius: nmsRadius,
      asynch: asynch,
    );
  }
}


/*
  String res = await Tflite.loadModel(
  model: "assets/mobilenet_v1_1.0_224.tflite",
  labels: "assets/labels.txt",
  numThreads: 1, // defaults to 1
  isAsset: true, // defaults to true, set to false to load resources outside assets
  useGpuDelegate: false // defaults to false, set to true to use GPU delegate
);


var result = await runPoseNetOnFrame(
  bytesList: img.planes.map((plane) {return plane.bytes;}).toList(),// required
  imageHeight: img.height, // defaults to 1280
  imageWidth: img.width,   // defaults to 720
  imageMean: 125.0,        // defaults to 125.0
  imageStd: 125.0,         // defaults to 125.0
  rotation: 90,            // defaults to 90, Android only
  numResults: 2,           // defaults to 5
  threshold: 0.7,          // defaults to 0.5
  nmsRadius: 10,           // defaults to 20
  asynch: true             // defaults to true
);
 */