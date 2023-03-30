import '../../../../../core/_core_export.dart';

class AuthBottomText extends StatelessWidget {
  const AuthBottomText({
    super.key,
    required this.text1,
    required this.text2,
    required this.function,
  });
  final String text1;
  final String text2;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: AppTextStyles.body14SemiBold
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            GestureDetector(
              onTap: () {
                function();
              },
              child: Text(
                text2,
                style: AppTextStyles.body14SemiBold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
