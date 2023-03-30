import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const GradientContainer(
            alignment: Alignment.topLeft,
          ),
          const GradientContainer(alignment: Alignment.bottomRight),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSvgPicture(
                svg: AppImagesPath.womenDrinkWater,
                height: ScreenSize.getWidthPercent(450 / 360),
              ),
              SizedBox(
                height: 45,
              ),
              SplashBoldText(text: AppTexts.shotStrong),
              SplashBoldText(
                text: AppTexts.timeless,
                color: AppColors.lightYellow,
              ),
              SplashBoldText(text: AppTexts.womanTraining),
            ],
          ),
          WelcomeButton(
              function: () {
                RouteManager.pushReplacementNamed(AppRoutes.login);
              },
              text: AppTexts.skip,
              alignment: Alignment.bottomLeft),
          WelcomeButton(
            function: () {
              RouteManager.pushReplacementNamed(AppRoutes.login);
            },
            text: AppTexts.next,
            alignment: Alignment.bottomRight,
          )
        ],
      ),
    );
  }
}
