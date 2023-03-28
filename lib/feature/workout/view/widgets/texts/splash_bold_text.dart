import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class SplashBoldText extends StatelessWidget {
  const SplashBoldText({
    super.key,
    required this.text,
    this.color,
  });
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 7.5,
        ),
        Text(
          text,
          style: TextStyle(
              color: color ?? AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ),
      ],
    );
  }
}
