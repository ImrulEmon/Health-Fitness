import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              onboardImg,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: paddingDft),
          Text(
            'Best workouts\nfor you',
            style: GoogleFonts.merriweather(
              textStyle: textTheme.headline4,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: paddingDft * 1.5,
          ),
          Text(
            'You will have everything you need to reach\nyour personal fitness goals - for free!',
            style: GoogleFonts.inter(
              textStyle: textTheme.caption,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
