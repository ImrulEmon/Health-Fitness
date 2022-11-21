import 'package:flutter/material.dart';
import '../constants/hl_constants.dart';

class CategoryCardWidget extends StatelessWidget {
  final String title;
  final Color bgColor;
  final String bgImg;

  const CategoryCardWidget(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.bgImg});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: 236.0,
      width: 142.0,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: paddingDft),
      margin: const EdgeInsets.symmetric(horizontal: paddingDft * .5),
      decoration: BoxDecoration(
        color: bgColor,
        // border: Border.all(),
        borderRadius: BorderRadius.circular(24.0),
        image: DecorationImage(
          image: AssetImage(bgImg),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        title,
        style: textTheme.headline6,
      ),
    );
  }
}
