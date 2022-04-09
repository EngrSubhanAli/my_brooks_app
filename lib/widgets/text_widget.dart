import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
    required this.textSize,
    this.textColor,
  }) : super(key: key);

  final String text;
  final double textSize;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          // fontWeight: FontWeight.w600,
          fontSize: textSize,
          color: textColor),
    );
  }
}
