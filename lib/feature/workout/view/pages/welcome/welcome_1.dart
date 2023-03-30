import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const GradientContainer(
            alignment: Alignment.topLeft,
          ),
          const GradientContainer(alignment: Alignment.bottomRight),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  AppSvgPicture(
                    svg: AppImagesPath.greenCircle,
                    height: ScreenSize.getWidthPercent(340 / 360),
                  ),
                  AppSvgPicture(
                    svg: AppImagesPath.firstWelcomeImage,
                    height: ScreenSize.getWidthPercent(340 / 360),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenSize.getHeightPercent(40 / 800),
              ),
              const SplashBoldText(text: AppTexts.perfectBody),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SplashBoldText(text: AppTexts.doing),
                  SizedBox(
                    width: ScreenSize.getWidthPercent(15 / 360),
                  ),
                  SplashBoldText(
                    text: AppTexts.crossfit,
                    color: AppColors.lightYellow,
                  ),
                ],
              ),
              const SplashBoldText(text: AppTexts.exercises),
            ],
          ),
          WelcomeButton(
            alignment: Alignment.bottomRight,
            text: AppTexts.next,
            function: () {
              RouteManager.pushNamed(AppRoutes.welcome2);
            },
          ),
          WelcomeButton(
            alignment: Alignment.bottomLeft,
            text: AppTexts.skip,
            function: () {
              RouteManager.pushNamed(AppRoutes.login);
            },
          )
        ],
      ),
    );
  }
}
