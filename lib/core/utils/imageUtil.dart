import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';
import 'package:image/image.dart' as img;

class ImageUtil {
  static Future<Uint8List?> imageToByteListUint8(
    img.Image image,
    String imageType,
  ) async {
    return img.encodeNamedImage(
      image,
      imageType,
    ) as Uint8List;
  }
}
