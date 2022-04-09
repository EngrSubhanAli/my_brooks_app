import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({
    Key? key,
    required this.onpress,
  }) : super(key: key);

  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => IconButton(
        padding: EdgeInsets.zero,
        onPressed: onpress!,
        icon: Image.asset(
          'assets/icons/icon_arrow_back.png',
          // height: 24.h,
          // width: 24.w,
        ),
        iconSize: 24.sp,
      ),
    );
  }
}
