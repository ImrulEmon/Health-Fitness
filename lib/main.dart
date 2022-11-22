import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_fitness/screens/home_page.dart';

import 'screens/onboarding_page.dart';
import 'constants/hl_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Fitness',
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: kBgc,
        appBarTheme: const AppBarTheme(
          backgroundColor: kBgc,
          foregroundColor: Colors.black,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        textTheme: const TextTheme().copyWith(
            headline4: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headline3: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            subtitle1: const TextStyle(
              color: Colors.grey,
            )),
      ),
      home: const OnboardingPage(),
      routes: {'/home': ((_) => const HomePage())},
    );
  }
}
