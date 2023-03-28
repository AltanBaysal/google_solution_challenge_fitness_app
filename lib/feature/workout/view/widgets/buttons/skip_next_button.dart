import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
    this.function,
    required this.text,
    required this.alignment,
  });

  final Function()? function;
  final String text;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: TextButton(
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 18,
              color: AppColors.black,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
