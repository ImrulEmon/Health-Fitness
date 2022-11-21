import 'package:flutter/material.dart';
import '../constants/hl_constants.dart';

class ExercisePage extends StatelessWidget {
  final String title;
  const ExercisePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kLightRed,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
              tooltip: 'More',
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .4,
              child: Image.asset(
                exrWarmUpImg,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ));
  }
}
