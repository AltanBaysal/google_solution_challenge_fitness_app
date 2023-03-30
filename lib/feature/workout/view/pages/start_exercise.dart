import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class StartExercise extends StatelessWidget {
  const StartExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppbarBackIcon(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.kDefaultPadding),
        child: Column(
          children: [
            Expanded(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    AppTexts.letsGetStarted,
                    style: AppTextStyles.title22Bold
                        .copyWith(fontWeight: FontWeight.w400),
                  )),
            ),
            Consumer<RouteArgumentProvider>(
                builder: (context, argumentProvider, child) {
              final argument = argumentProvider.object as String;
              return Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: AppSvgPicture(
                    svg: argument,
                    height: ScreenSize.getWidthPercent(250 / 360),
                  ),
                ),
              );
            }),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AuthButton(
                  text: AppTexts.getStarted,
                  function: () {}, //TODO:
                ),
              ),
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(25 / 800),
            )
          ],
        ),
      ),
    );
  }
}
