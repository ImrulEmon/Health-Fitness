import 'package:flutter/material.dart';
import '../constants/hl_constants.dart';

class CircleAvaterWidget extends StatelessWidget {
  const CircleAvaterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          avaterImg,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
