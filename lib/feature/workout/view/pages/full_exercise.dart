import 'package:google_solution_challenge_fitness_app/core/_core_export.dart';

class FullExerciseScreen extends StatelessWidget {
  const FullExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final String argument = ModalRoute.of(context)!.settings.arguments
    //     as String; //TODO bunu constructerdan alabilirsin ama onun yerine provider'dan alsan daha iyi olıur

    final routeProvider = Provider.of<RouteArgumentProvider>(context);

    List<FullExercise> fullExercises = [
      //todo : bu veriler sabit olmasa daha iyi olur gibi Api'den falan çeksek.
      FullExercise(
        "10",
        "110",
        AppTexts.beginner,
        AppImagesPath.jumping,
        "Exercise with jumping\nRope(Slow)",
      ),
      FullExercise(
        "15",
        "80",
        AppTexts.Intermediate,
        AppImagesPath.sittingWithDumbell,
        "Exercise with sitting\nDumbbels",
      ),
      FullExercise(
        "10",
        "150",
        AppTexts.Intermediate,
        AppImagesPath.jumping2,
        "Exercise with jumping\nRope(Fast)",
      ),
      FullExercise("20", "148", AppTexts.beginner, AppImagesPath.gymnastic,
          "Free exercise\n(push-ups, sit-ups etc.)"), // TODO : bu kısım serbest egzersizler olsun.
    ];

    //TODO: Sub-titles of the selected exercise will  be added to these lists.
    // switch (argument) {
    //   case AppTexts.yoga:
    //     fullExercises = [];
    //     break;

    //   case AppTexts.legs:
    //     fullExercises = [];
    //     break;

    //   case AppTexts.cardio:
    //     fullExercises = [];
    //     break;
    //   case AppTexts.gym:
    //     fullExercises = [];
    //     break;
    //   case AppTexts.stretch:
    //     fullExercises = [];
    //     break;
    //   case AppTexts.fullbody:
    //     fullExercises = [];
    //     break;
    // }

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Stack(
          children: [
            Align(alignment: Alignment.topLeft, child: const AppbarBackIcon()),
            const Align(
                alignment: Alignment.center,
                child: AppbarText(text: AppTexts.fullExercise)),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: fullExercises.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppPadding.kDefaultPadding),
            child: GestureDetector(
              onTap: () {
                routeProvider
                    .setArguments(fullExercises[index].exercisePhotoPath);
                RouteManager.pushNamed("/start");
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: ScreenSize.getWidthPercent(15 / 800)),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColors.gray.withOpacity(20 / 100),
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSvgPicture(
                      svg: fullExercises[index].exercisePhotoPath,
                      height: ScreenSize.getWidthPercent(95 / 360),
                    ),
                    SizedBox(
                      width: ScreenSize.getWidthPercent(15 / 360),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BodyBoldText(
                          text: fullExercises[index].exerciseName,
                        ),
                        SizedBox(
                          height: ScreenSize.getHeightPercent(15 / 800),
                        ),
                        Row(
                          children: [
                            const AppSvgPicture(
                              svg: "assets/icons/calorie.svg",
                              height: 20,
                            ),
                            SizedBox(
                              width: ScreenSize.getWidthPercent(5 / 360),
                            ),
                            SmallGrayText(
                                text:
                                    "${fullExercises[index].exercisecCalorie} kcal"),
                            SizedBox(
                              width: ScreenSize.getWidthPercent(5 / 360),
                            ),
                            const AppSvgPicture(
                              svg: "assets/icons/line.svg",
                              height: 20,
                            ),
                            SizedBox(
                              width: ScreenSize.getWidthPercent(5 / 360),
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
                        SizedBox(
                          height: ScreenSize.getHeightPercent(10 / 800),
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

class FullExercise {
  final String exerciseName;
  final String exerciseTime;
  final String exercisecCalorie;
  final String exerciseLevel;
  final String exercisePhotoPath;

  FullExercise(this.exerciseTime, this.exercisecCalorie, this.exerciseLevel,
      this.exercisePhotoPath, this.exerciseName);
}
