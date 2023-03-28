import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO bunları view controllerda olması lazım değil mi
    //TODO benzer widgetlar bir kere yazılıp tekrar tekrar kullanılmalı
    final controller = PageController(
      initialPage: 0,
    );

    return PageView(
      controller: controller,
      children: const [WelcomeScreen1(), WelcomeScreen2(), WelcomeScreen3()],
    );
  }
}
