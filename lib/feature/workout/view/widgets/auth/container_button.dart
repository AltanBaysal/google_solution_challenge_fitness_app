import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/_core_export.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text,
    this.color,
    this.textColor,
    this.fontSize,
    this.borderColor,
    this.iconPath,
    required this.function,
  });
  final String text;
  final String? iconPath;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final Color? borderColor;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        width: double.infinity,
        height: ScreenSize.getHeightPercent(55 / 800),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color ?? AppColors.darkLime,
            border: Border.all(color: borderColor ?? AppColors.transparant)),
        padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.getWidthPercent(20 / 800)),
        child: Stack(
          children: [
            iconPath != null
                ? Align(
                    child: AppSvgPicture(
                      svg: iconPath!,
                      height: ScreenSize.getWidthPercent(24 / 360),
                    ),
                    alignment: Alignment.centerLeft,
                  )
                : SizedBox(),
            Center(
              child: Text(
                text,
                style: AppTextStyles.title22Bold.copyWith(
                    color: textColor ?? AppColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: fontSize,
                    fontFamily: iconPath != null
                        ? GoogleFonts.montserrat().fontFamily
                        : null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
