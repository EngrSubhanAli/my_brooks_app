import 'package:flutter/material.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeboxWidget extends StatelessWidget {
  const SizeboxWidget({
    Key? key,
    required this.heightVale,
  }) : super(key: key);

  final double? heightVale;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightVale,
    );
  }
}

Divider kdivider = const Divider(
  thickness: 2.0,
  endIndent: 10.0,
  indent: 10.0,
  color: Color(0xff85A0F2),
);

SizedBox buildSpaceVertical(height) => SizedBox(height: height);
SizedBox buildSpaceHorizontal(width) => SizedBox(width: width);
