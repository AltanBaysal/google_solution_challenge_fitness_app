import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class AppbarText extends StatelessWidget {
  const AppbarText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.black),
    );
  }
}
