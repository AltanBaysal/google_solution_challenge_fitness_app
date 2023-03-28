import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: Sizedboxların ve Svglerin boyutu ayarlanacak şuan sabit sayılar verdim geçtim. ScreenSize da hata veriyor neden bilmiyorum :/
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
                children: const [
                  AppSvgPicture(
                    svg: AppImagesPath.shapes,
                    height: 380, //
                  ),
                  AppSvgPicture(
                    svg: AppImagesPath.splashImage,
                    height: 380,
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
        height: 56, //TODO: burada da ScrenSize() kullandım hata veriyor :/
        width: 180,
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Center(
          child: SplashRegularText(
            text: AppTexts.letsStart,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
