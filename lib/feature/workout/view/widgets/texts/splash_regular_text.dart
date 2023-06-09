import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class SplashRegularText extends StatelessWidget {
  const SplashRegularText({super.key, required this.text, this.color});
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.title22Bold.copyWith(
        color: color ?? AppColors.black,
      ),
    );
  }
}
