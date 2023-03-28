import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class StartExercise extends StatelessWidget {
  const StartExercise({super.key});

  @override
  Widget build(BuildContext context) {
    final String argument =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const AppbarBackIcon(),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppPadding.kDefaultPadding),
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            const Align(
                alignment: Alignment.topCenter,
                child: BodyBoldText(text: AppTexts.getStarted)),
            Align(
              alignment: Alignment.center,
              child: AppSvgPicture(
                svg: argument,
                height: 250,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      color: AppColors.darkLime,
                      borderRadius: BorderRadius.circular(5)),
                  width: double.infinity,
                  height: 60,
                  child: const Center(
                    child: BodyBoldText(
                      text: AppTexts.getStarted,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
