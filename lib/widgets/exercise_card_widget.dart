import 'package:flutter/material.dart';
import '../constants/hl_constants.dart';
import '../models/exercise_model.dart';

class ExerciseCardWidget extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCardWidget({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      leading: Image.asset(exercise.image),
      title: Text(
        exercise.title,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        exercise.time,
        style: const TextStyle(color: Colors.grey),
      ),
      trailing: Image.asset(
        playIcon,
        color: kDeepBlue,
      ),
    );
  }
}
