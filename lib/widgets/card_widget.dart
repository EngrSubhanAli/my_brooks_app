import 'package:brooks/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    Key? key,
    // required this.colour,
    // required this.cardChild,
    this.state = 1,
    required this.cardHight,
    required this.cardimage,
    required this.imageHight,
    required this.imageWidth,
    required this.cardtext,
    required this.textSize,
    required this.onTap,
  }) : super(key: key);

  // final Color colour;
  final int state;
  final double cardHight;
  final String cardimage;
  final double imageHight;
  final double imageWidth;
  final String cardtext;
  final double textSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(325, 706),
      builder: () => GestureDetector(
        onTap: onTap,
        child: Container(
          height: cardHight,
          // width: 288.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: const Color(0xFFF5F5F5),
          ),
          child: state == 1
              ? Padding(
                  padding: EdgeInsets.only(right: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            cardimage,
                            height: imageHight,
                            width: imageWidth,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                              text: cardtext,
                              textSize: textSize,
                              textColor: Colors.black),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF005792),
                              size: 25.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(left: 6.w, right: 15.w),
                  child: Column(
                    children: [
                      Container(
                        height: cardHight,
                        // width: 288.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              cardimage,
                              height: imageHight,
                              width: imageWidth,
                            ),
                            TextWidget(
                                text: cardtext,
                                textSize: textSize,
                                textColor: Colors.black),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF005792),
                              size: 25.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
