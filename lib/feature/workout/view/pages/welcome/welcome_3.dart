import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientContainer(
            alignment: Alignment.topLeft,
            color: AppColors.lightRed.withOpacity(50 / 100),
          ),
          GradientContainer(
              alignment: Alignment.bottomRight,
              color: AppColors.lightRed.withOpacity(50 / 100)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: const [
                  Align(
                    alignment: Alignment.topRight,
                    child: AppSvgPicture(
                      svg: AppImagesPath.spots,
                      height: 200,
                    ),
                  ),
                  AppSvgPicture(
                    svg: AppImagesPath.womenInWelcome3,
                    height: 500, //TODO: bu değerler sabit verilmeyecek!
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const SplashBoldText(text: AppTexts.healthyMuscular),
              const SplashBoldText(
                text: AppTexts.sportsWoman,
                color: AppColors.lightYellow,
              ),
              const SplashBoldText(text: AppTexts.standing),
            ],
          ),
          WelcomeButton(
              function: () {
                RouteManager.pushReplacementNamed(AppRoutes.categories);
              },
              text: AppTexts.skip,
              alignment: Alignment.bottomLeft),
          WelcomeButton(
            text: AppTexts.next,
            alignment: Alignment.bottomRight,
            function: () {
              RouteManager.pushReplacementNamed(AppRoutes.categories);
            },
          )
        ],
      ),
    );
  }
}
