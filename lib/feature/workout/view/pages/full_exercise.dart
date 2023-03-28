import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class FullExerciseScreen extends StatelessWidget {
  const FullExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String argument = ModalRoute.of(context)!.settings.arguments
        as String; //TODO bunu constructerdan alabilirsin ama onun yerine provider'dan alsan daha iyi olıur

    List<FullExercises> fullExercises = [];

    //TODO: Sub-titles of the selected exercise will be added to these lists.
    switch (argument) {
      case AppTexts.yoga:
        fullExercises = [];
        break;

      case AppTexts.legs:
        fullExercises = [];
        break;

      case AppTexts.cardio:
        fullExercises = [];
        break;
      case AppTexts.gym:
        fullExercises = [];
        break;
      case AppTexts.stretch:
        fullExercises = [];
        break;
      case AppTexts.fullbody:
        fullExercises = [];
        break;
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 0,
        backgroundColor: AppColors.white,
        title: const Center(child: AppbarText(text: AppTexts.fullExercise)),
        leading: const AppbarBackIcon(),
      ),
      body: ListView.builder(
        itemCount: fullExercises.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.kDefaultPadding),
            child: GestureDetector(
              onTap: () {
                RouteManager.pushNamed("/start",
                    arguments: fullExercises[index].exercisePhotoPath);
              },
              child: Container(
                padding: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: AppColors.gray.withOpacity(20 / 100)))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSvgPicture(
                      svg: fullExercises[index].exercisePhotoPath,
                      height: 120,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyBoldText(
                          text: fullExercises[index].exerciseName,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const AppSvgPicture(
                              svg: "assets/icons/calorie.svg",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SmallGrayText(
                                text:
                                    "${fullExercises[index].exercisecCalorie} kcal"),
                            const SizedBox(
                              width: 5,
                            ),
                            const AppSvgPicture(
                              svg: "assets/icons/line.svg",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const AppSvgPicture(
                              svg: "assets/icons/clock.svg",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SmallGrayText(
                                text:
                                    "${fullExercises[index].exerciseTime} min"),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SmallGrayText(text: fullExercises[index].exerciseLevel),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FullExercises {
  final String exerciseName;
  final String exerciseTime;
  final String exercisecCalorie;
  final String exerciseLevel;
  final String exercisePhotoPath;

  FullExercises(this.exerciseTime, this.exercisecCalorie, this.exerciseLevel,
      this.exercisePhotoPath, this.exerciseName);
}
