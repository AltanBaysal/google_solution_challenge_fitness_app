import '../../../../core/_core_export.dart';

class ForgotPwScreen extends StatelessWidget {
  const ForgotPwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: AppbarBackIcon(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.forgotPasswd,
              style: AppTextStyles.title30Regular,
            ),
            Text(
              AppTexts.enterYourEmail,
              style: AppTextStyles.body15Medium,
            ),
            SizedBox(
              height: ScreenSize.getHeightPercent(1 / 8),
            ),
            AuthTextField(label: AppTexts.email),
            SizedBox(
              height: ScreenSize.getHeightPercent(1 / 8),
            ),
            AuthButton(
                text: AppTexts.resetPw,
                function:
                    () {}), // TODO: Parolayı sıfırlamak için mail gönderecek fonksiyon
          ],
        ),
      ),
    );
  }
}
