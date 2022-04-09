import 'package:brooks/utils/strings_manager.dart';
import 'package:brooks/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinishButtonTopWidget extends StatelessWidget {
  const FinishButtonTopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => Container(
        height: MediaQuery.of(context).size.height * 0.03,
        width: MediaQuery.of(context).size.width * 0.15,

        // height: 18.h,
        // width: 55.w,
        decoration: BoxDecoration(
          color: Color(0xFF85A0F2),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: TextWidget(
            text: StringsManager.finishText,
            textSize: 12.sp,
            textColor: Colors.white,
          ),
        ),
      ),
    );
    // Chip(
    //   backgroundColor: Color(0xFF85A0F2),
    //   label: TextWidget(
    //       text: StringsManager.finishText,
    //       textSize: 12.0.h,
    //       textColor: Colors.white),
    // );
  }
}
