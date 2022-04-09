import 'package:flutter/material.dart';

class PrefixIconWidget extends StatelessWidget {
  const PrefixIconWidget({
    required this.bgImage,
    required this.iconImage,
    Key? key,
  }) : super(key: key);

  final String bgImage;
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          scale: 3.0,
          image: AssetImage(bgImage),
        ),
      ),
      child: Image.asset(
        iconImage,
        scale: 3.0,
      ),
    );
  }
}
