import 'package:flutter/material.dart';

import '../constants/hl_constants.dart';
import '../widgets/circle_avater_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(menuIcon),
        title: const Text(
          'Hello, Adam Smith',
          style: TextStyle(
            fontFamily: 'Inter',
          ),
        ),
        actions: const [
          CircleAvaterWidget(),
          SizedBox(
            width: paddingDft,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingDft),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: paddingDft * 1.5,
            ),
            Text(
              'Find Your',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36.0,
              ),
            ),
            Text(
              'Workout Class',
              style: TextStyle(
                color: Colors.black,
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
