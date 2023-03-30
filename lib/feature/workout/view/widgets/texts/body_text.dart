import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class BodyBoldText extends StatelessWidget {
  const BodyBoldText({
    super.key,
    required this.text,
    this.color,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppTextStyles.body20BebasNeueRegular);
  }
}
