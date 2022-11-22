import 'package:flutter/material.dart';

import '../constants/hl_constants.dart';
import '../widgets/timer_widget.dart';
import '../widgets/running_widget.dart';
import '../widgets/navigation_bar_widget.dart';
import '../models/exercise_model.dart';
import '../widgets/exercise_card_widget.dart';

class ExercisePage extends StatelessWidget {
  final String title;
  final String exrImg;
  final List<Exercise> exercises = [
    Exercise(id: 'ex1', title: 'Exercise1', image: exercise1Img, time: '2:30'),
    Exercise(id: 'ex2', title: 'Exercise2', image: exercise2Img, time: '2:00'),
    Exercise(id: 'ex3', title: 'Exercise3', image: exercise3Img, time: '3:20'),
    Exercise(id: 'ex4', title: 'Exercise4', image: exercise4Img, time: '2:30'),
    Exercise(id: 'ex5', title: 'Exercise5', image: exercise5Img, time: '5:30'),
    Exercise(id: 'ex6', title: 'Exercise6', image: exercise6Img, time: '6:10'),
    Exercise(id: 'ex7', title: 'Exercise7', image: exercise7Img, time: '4:30'),
    Exercise(id: 'ex8', title: 'Exercise5', image: exercise5Img, time: '7:30'),
    Exercise(id: 'ex9', title: 'Exercise6', image: exercise6Img, time: '8:30'),
    Exercise(id: 'ex10', title: 'Exercise7', image: exercise7Img, time: '9:30'),
  ];

  ExercisePage({super.key, required this.title, required this.exrImg});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: kExrPageBgc,
      appBar: AppBar(
        backgroundColor: kExrPageBgc,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: kWhite,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .38,
                  child: Image.asset(
                    exrWarmUpImg,
                    fit: BoxFit.cover,
                  ),
                ),
                Image.asset(
                  playIcon,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: paddingDft),
              height: MediaQuery.of(context).size.height * .6,
              decoration: const BoxDecoration(
                color: kBgc,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    thickness: 6.0,
                    indent: paddingDft * 11,
                    endIndent: paddingDft * 11,
                    height: paddingDft * 1.5,
                    color: kDivColor,
                  ),
                  Text(
                    title,
                    style: textTheme.headline4,
                  ),
                  const SizedBox(
                    height: paddingDft * .5,
                  ),
                  Text(
                    'Warm up properly before exercising to prevent\ninjury and make your workouts more effective.',
                    style: textTheme.subtitle1,
                  ),
                  const SizedBox(height: paddingDft),
                  Row(
                    children: const [
                      TimerWidget(),
                      SizedBox(width: paddingDft),
                      RunningWidget()
                    ],
                  ),
                  const SizedBox(height: paddingDft),
                  Text(
                    "Exercises",
                    style: textTheme.headline6,
                  ),
                  const SizedBox(height: paddingDft),
                  Expanded(
                    child: ListView(
                      children: exercises.map((exercise) {
                        return ExerciseCardWidget(
                          exercise: exercise,
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}
