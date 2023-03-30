import 'package:google_fonts/google_fonts.dart';
import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class AppTextStyles {
  //Headlines
  static TextStyle titleBebasNeue48 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: ScreenSize.getWidthPercent(48 / 360),
    fontFamily: GoogleFonts.bebasNeue().fontFamily,
  );

  static TextStyle title30BoldBlack = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: ScreenSize.getWidthPercent(.07),
      fontFamily: GoogleFonts.bebasNeue().fontFamily);

  static TextStyle title30Regular = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: ScreenSize.getWidthPercent(.07),
      fontFamily: GoogleFonts.bebasNeue().fontFamily);

  static TextStyle title22Bold = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: ScreenSize.getWidthPercent(.055),
      fontFamily: GoogleFonts.bebasNeue().fontFamily);

  //Body
  static TextStyle body16Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: ScreenSize.getWidthPercent(.04),
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );

  static TextStyle body20RegularDmSans = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: ScreenSize.getWidthPercent(.05),
    fontFamily: GoogleFonts.dmSans().fontFamily,
  );

  static TextStyle body20BebasNeueRegular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: ScreenSize.getWidthPercent(.05),
    fontFamily: GoogleFonts.bebasNeue().fontFamily,
  );

  static TextStyle body15Medium = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: ScreenSize.getWidthPercent(.037),
      fontFamily: GoogleFonts.dmSans().fontFamily);

  static TextStyle body15SemiBold = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: ScreenSize.getWidthPercent(.037),
      fontFamily: GoogleFonts.montserrat().fontFamily);

  static TextStyle body15Bold = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: ScreenSize.getWidthPercent(.037),
      fontFamily: GoogleFonts.montserrat().fontFamily);

  static TextStyle body14SemiBold = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: ScreenSize.getWidthPercent(.035),
      fontFamily: GoogleFonts.montserrat().fontFamily);

  static TextStyle body12Regular = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: ScreenSize.getWidthPercent(.032),
      fontFamily: GoogleFonts.montserrat().fontFamily);
}
