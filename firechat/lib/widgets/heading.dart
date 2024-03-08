import 'package:firechat/widgets/shadow_box.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String heading;
  final IconData leftIcon;
  final IconData rightIcon;
  final Color leftColor;
  final Color rightColor;
  final double fontSize;
  const Heading({
    required this.heading,
    required this.leftIcon,
    required this.rightIcon,
    this.fontSize = 30,
    this.leftColor = Colors.white,
    this.rightColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShadowBox(
            width: 57,
            height: 60,
            color: leftColor,
            child: Icon(leftIcon),
          ),
          Text(
            heading,
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
          ShadowBox(
            width: 57,
            height: 60,
            color: rightColor,
            child: Icon(rightIcon),
          ),
        ],
      ),
    );
  }
}
