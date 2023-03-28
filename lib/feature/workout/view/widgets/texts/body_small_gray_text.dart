import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class SmallGrayText extends StatelessWidget {
  const SmallGrayText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 14, color: AppColors.darkGray),
    );
  }
}
