import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconBottonWidget extends StatelessWidget {
  const IconBottonWidget({
    Key? key,
    required this.iconImage,
    required this.onpress,
  }) : super(key: key);

  final String iconImage;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(325, 674),
      builder: () => Container(
        height: 42.h,
        width: 42.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1.r,
                blurRadius: 4.r,
                offset: const Offset(0, 1),
              )
            ]),
        child: MaterialButton(
          padding: EdgeInsets.zero,
          onPressed: onpress,
          child: Image.asset(
            iconImage,
            height: 24.h,
            width: 24.w,
          ),
        ),
      ),
    );
  }
}
