import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController pwController = TextEditingController();
    final TextEditingController fullNameController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: AppbarBackIcon(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppTexts.createAccount,
              style: AppTextStyles.title30Regular,
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(9 / 800),
            ),
            Text(
              AppTexts.enterCredentials,
              style: AppTextStyles.body15Medium
                  .copyWith(color: AppColors.darkGray),
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(45 / 800),
            ),
            AuthTextField(
                label: AppTexts.fullName, controller: fullNameController),
            AuthTextField(
              label: AppTexts.emailAdress,
              controller: emailController,
            ),
            AuthTextField(
              label: AppTexts.password,
              controller: pwController,
              isPW: true,
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(30 / 800),
            ),
            AuthButton(
              text: AppTexts.createAccount,
              function: () {}, //TODO: hesap oluştur
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(24 / 800),
            ),
            Center(
              child: Text(
                AppTexts.registerWith,
                style: AppTextStyles.body12Regular
                    .copyWith(color: Color(0xff303841)),
              ),
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(20 / 800),
            ),
            AuthButton(
              function: () {}, //todo: google ile kayıt ol
              text: AppTexts.connectWithGoogle,
              fontSize: ScreenSize.getWidthPercent(0.035),
              iconPath: AppIconPaths.google,
              color: AppColors.lightWhite,
              textColor: AppColors.darkBrown,
              borderColor: AppColors.gray.withOpacity(.35),
            ),
            AuthBottomText(
              text1: AppTexts.alreadyHaveAnAccount,
              text2: AppTexts.loginx,
              function: () {
                RouteManager.pushNamed("/login");
              },
            )
          ],
        ),
      ),
    );
  }
}
