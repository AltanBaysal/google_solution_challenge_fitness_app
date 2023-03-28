import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.alignment,
    this.color,
  });
  final AlignmentGeometry alignment;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
            tileMode: TileMode.clamp,
            center: alignment,
            colors: [
              color ?? AppColors.lightYellow.withOpacity(40 / 100),
              AppColors.transparant
            ],
            stops: const [0.1, 0.4],
            radius: 1.7),
      ),
    );
  }
}
