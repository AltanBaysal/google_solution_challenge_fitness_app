import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class AppbarBackIcon extends StatelessWidget {
  const AppbarBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.chevron_left,
        color: AppColors.black,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
