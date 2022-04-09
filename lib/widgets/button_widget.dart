import 'package:brooks/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key, required this.buttonText, required this.ontap})
      : super(key: key);

  final String? buttonText;
  final VoidCallback ontap;

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return buildButton();
  }

  Widget buildButton() {
    return ScreenUtilInit(
      designSize: Size(325, 674),
      builder: () => InkWell(
        onTap: widget.ontap,
        child: Container(
          height: 40.h,
          width: 229.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorManager.secondaryColor,
          ),
          child: Center(
            child: Text(
              widget.buttonText!,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            ),
          ),
        ),
      ),
    );
  }
}
