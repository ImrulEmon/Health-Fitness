import 'package:flutter/material.dart';
import '../constants/hl_constants.dart';

class RunningWidget extends StatelessWidget {
  const RunningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: paddingDft * .7, horizontal: paddingDft * 1.5),
      decoration: BoxDecoration(
        color: kLightRed,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        children: const [
          Icon(
            Icons.directions_run,
            color: kDeepRed,
          ),
          SizedBox(width: paddingDft),
          Text(
            'Running',
            style: TextStyle(
              color: kDeepRed,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
