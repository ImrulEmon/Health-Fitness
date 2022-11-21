import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:health_fitness/screens/home_page.dart';
import '../constants/hl_constants.dart';

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
                textStyle: textTheme.caption, fontSize: paddingDft * 1.1),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: paddingDft * 1.5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: paddingDft * 3.5,
                vertical: paddingDft * 1.3,
              ),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFF48D0FE), Color(0xFF10B9F1)]),
                  borderRadius: BorderRadius.circular(40.0)),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
