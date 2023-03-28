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
            height: 170,
          ),
          onTap: () {
            function();
          },
        ),
        const SizedBox(
          height: 20,
        ),
        BodyBoldText(text: text),
      ],
    );
  }
}
