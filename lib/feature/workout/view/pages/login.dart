import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController pwController = TextEditingController();
    //TODO: Bunları disposelamak için sadece statefull mu kullanılacak bilmiyorum.

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(leading: AppbarBackIcon()),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppTexts.welcomeToProFitness,
              style: AppTextStyles.title30Regular,
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(0.008),
            ),
            Text(
              AppTexts.helloThere,
              style: AppTextStyles.body15Medium
                  .copyWith(color: AppColors.darkGray),
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(0.05),
            ),
            AuthTextField(
              label: AppTexts.emailAdress,
              controller: emailController,
            ),
            AuthTextField(
              label: AppTexts.password,
              controller: pwController,
              isPW: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  RouteManager.pushNamed("/forgotpw");
                },
                child: Text(
                  AppTexts.forgotPw,
                  style: AppTextStyles.body14SemiBold,
                ),
              ),
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(32 / 800),
            ),
            AuthButton(
                text: AppTexts.login,
                function: () {
                  RouteManager.pushReplacementNamed("/categories");
                }), //todo : giriş yapmak için gerek, fonksiyon ve giriş yapıldıktan sonra category kısmına gidilecek
            SizedBox(
              height: ScreenSize.getHeightPercent(26 / 800),
            ),
            Center(
              child: Text(
                AppTexts.loginWith,
                style: AppTextStyles.body12Regular
                    .copyWith(color: Color(0xff303841)),
              ),
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(20 / 800),
            ),
            AuthButton(
              text: AppTexts.connectWithGoogle,
              fontSize: ScreenSize.getWidthPercent(0.035),
              iconPath: AppIconPaths.google,
              color: AppColors.lightWhite,
              textColor: AppColors.darkBrown,
              function:
                  () {}, // todo: Google ile giriş yapmak için gereken fonksiyon
              borderColor: AppColors.gray.withOpacity(.35),
            ),
            AuthBottomText(
              text1: AppTexts.dontHaveAccount,
              text2: AppTexts.register,
              function: () {
                RouteManager.pushNamed("/signup");
              },
            )
          ],
        ),
      ),
    );
  }
}
