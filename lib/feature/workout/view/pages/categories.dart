import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      Category(
          name: AppTexts.yoga,
          photoPath: AppImagesPath.yoga,
          function: () {
            RouteManager.pushReplacementNamed("/fullExercise",
                arguments: AppTexts.yoga);
          }),
      Category(
          name: AppTexts.gym,
          photoPath: AppImagesPath.gym,
          function: () {
            RouteManager.pushNamed("/fullExercise", arguments: AppTexts.gym);
          }),
      Category(
          name: AppTexts.cardio,
          photoPath: AppImagesPath.cardio,
          function: () {
            RouteManager.pushNamed("/fullExercise", arguments: AppTexts.cardio);
          }),
      Category(
          name: AppTexts.stretch,
          photoPath: AppImagesPath.stretch,
          function: () {
            RouteManager.pushNamed("/fullExercise",
                arguments: AppTexts.stretch);
          }),
      Category(
          name: AppTexts.fullbody,
          photoPath: AppImagesPath.fullbody,
          function: () {
            RouteManager.pushNamed("/fullExercise",
                arguments: AppTexts.fullbody);
          }),
      Category(
          name: AppTexts.legs,
          photoPath: AppImagesPath.legs,
          function: () {
            RouteManager.pushNamed("/fullExercise", arguments: AppTexts.legs);
          }),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparant,
        title: const Center(
          child: AppbarText(
            text: AppTexts.categories,
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppPadding.kDefaultPadding),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 50),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryColumn(
                svg: categories[index].photoPath,
                text: categories[index].name,
                function: categories[index].function);
          },
        ),
      ),
    );
  }
}

class Category {
  final String name;
  final String photoPath;
  final Function function;
  Category(
      {required this.name, required this.photoPath, required this.function});
}
