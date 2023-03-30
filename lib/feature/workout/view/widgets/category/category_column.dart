import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class CategoryColumn extends StatelessWidget {
  const CategoryColumn(
      {super.key,
      required this.svg,
      required this.text,
      required this.function});

  final String svg;
  final String text;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: AppSvgPicture(
            svg: svg,
            height: ScreenSize.getWidthPercent(120 / 360),
          ),
          onTap: () {
            function();
          },
        ),
        // SizedBox(
        //   height: ScreenSize.getHeightPercent(15 / 800),
        // ),
        BodyBoldText(text: text),
      ],
    );
  }
}
