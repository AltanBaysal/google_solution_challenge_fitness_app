import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          const GradientContainer(
            alignment: Alignment.bottomRight,
          ),
          const GradientContainer(
            alignment: Alignment.topLeft,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  AppSvgPicture(
                    svg: AppImagesPath.shapes,
                    height: ScreenSize.getWidthPercent(1.5 / 2), //
                  ),
                  AppSvgPicture(
                    svg: AppImagesPath.splashImage,
                    height: ScreenSize.getWidthPercent(1.5 / 2),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SplashBoldText(text: AppTexts.pro),
                  SizedBox(
                    width: 15,
                  ),
                  SplashBoldText(
                      text: AppTexts.fitness, color: AppColors.darkLime),
                ],
              ),
              const SplashRegularText(text: AppTexts.splashText1),
              const SplashRegularText(text: AppTexts.splashText2),
              const SizedBox(
                height: 80,
              ),
              const SplashButton()
            ],
          ),
        ],
      ),
    );
  }
}

class SplashButton extends StatelessWidget {
  const SplashButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        RouteManager.pushNamed(AppRoutes.welcome1);
      },
      child: Container(
        height: ScreenSize.getHeightPercent(56 / 800),
        width: ScreenSize.getWidthPercent(1 / 2),
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            AppTexts.letsStart,
            style: AppTextStyles.body20RegularDmSans
                .copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
