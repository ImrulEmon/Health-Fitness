import 'package:flutter/material.dart';
import '../constants/hl_constants.dart';

class CircleAvaterWidget extends StatelessWidget {
  const CircleAvaterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(avaterImg),
      ),
    );
  }
}
