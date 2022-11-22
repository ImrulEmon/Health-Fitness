import 'package:flutter/material.dart';
import '../constants/hl_constants.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: paddingDft * .7, horizontal: paddingDft * 1.5),
      decoration: BoxDecoration(
        color: kLightBlue,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: const [
          Icon(
            Icons.schedule_outlined,
            color: kDeepBlue,
          ),
          SizedBox(width: paddingDft),
          Text(
            '10.00 mins',
            style: TextStyle(
              color: kDeepBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
