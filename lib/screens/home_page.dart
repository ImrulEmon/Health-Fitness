import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_fitness/widgets/search_widget.dart';

import '../constants/hl_constants.dart';
import '../widgets/circle_avater_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

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
          children: [
            const SizedBox(
              height: paddingDft * 1.5,
            ),
            const Text(
              'Find Your',
              style: TextStyle(
                color: Colors.black,
                fontSize: paddingDft * 2.25,
              ),
            ),
            const Text(
              'Workout Class',
              style: TextStyle(
                color: Colors.black,
                fontSize: paddingDft * 2.25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SearchWidget(),
            const SizedBox(
              height: paddingDft,
            ),
            Container(
              padding: const EdgeInsets.all(paddingDft),
              decoration: BoxDecoration(
                color: kLightBlue,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Today's\nactivity",
                        style: GoogleFonts.nunito(
                          textStyle: textTheme.headline3,
                        ),
                      ),
                      const SizedBox(
                        height: paddingDft,
                      ),
                      Text(
                        "8:00 AM - 1:30 PM",
                        style: textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: paddingDft,
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset(legImg),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
