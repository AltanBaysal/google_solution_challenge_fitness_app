import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class AppSvgPicture extends StatelessWidget {
  const AppSvgPicture({
    super.key,
    required this.svg,
    this.height,
    this.color,
  });

  final String svg;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, // ScreenSize().getWidthPercent(.045),
      width: height, //?? ScreenSize().getWidthPercent(.045),
      child: SvgPicture.asset(
        svg,
        color: color,
        fit: BoxFit.contain,
      ),
    );
  }
}
