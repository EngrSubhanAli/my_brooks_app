import 'package:brooks/constants/constants.dart';
import 'package:brooks/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopRowCard extends StatefulWidget {
  TopRowCard({
    Key? key,
    this.state = 1,
  }) : super(key: key);

  final state;

  @override
  State<TopRowCard> createState() => _TopRowCardState();
}

class _TopRowCardState extends State<TopRowCard> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(325, 674),
      builder: () => widget.state == 1
          ? Container(
              // width: 288,
              height: 30.h,
              width: 295.w,
              // margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Color(0xFFF5F5F5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                        text: '27, January 2022',
                        textSize: 12.sp,
                        textColor: Colors.black),
                    TextWidget(
                        text: 'Workout Time: 0:15:04',
                        textSize: 12.sp,
                        textColor: Colors.black),
                  ],
                ),
              ),
            )
          : Container(
              height: 30.h,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      text: 'Workout Time: 0:15:04',
                      textSize: 12.sp,
                      textColor: Colors.black),
                  Container(
                    // height: 40.h,
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClick = true;
                                });
                              },
                              child: Chip(
                                label: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Ellipse1.png',
                                      height: 16.h,
                                      width: 16.w,
                                    ),
                                    buildSpaceHorizontal(4.w),
                                    TextWidget(
                                      text: 'UserA',
                                      textSize: 8.sp,
                                      textColor: isClick == true
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ],
                                ),
                                backgroundColor: isClick == true
                                    ? Color(0xFF26A3BF)
                                    : Color(0xFFF5F5F5),
                              ),
                            ),
                            Positioned(
                              top: -2,
                              right: 10,
                              child: Visibility(
                                visible: isClick,
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey[50],
                                  radius:
                                      MediaQuery.of(context).size.width * 0.02,
                                  child: Icon(
                                    Icons.check,
                                    size: MediaQuery.of(context).size.width *
                                        0.03,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        buildSpaceHorizontal(4.w),
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isClick = false;
                                });
                              },
                              child: Chip(
                                label: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/Ellipse2.png',
                                      height: 16.h,
                                      width: 16.w,
                                    ),
                                    buildSpaceHorizontal(4.w),
                                    TextWidget(
                                      text: 'UserB',
                                      textSize: 8.sp,
                                      textColor: isClick == false
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ],
                                ),
                                backgroundColor: isClick == false
                                    ? Color(0xFF26A3BF)
                                    : Color(0xFFF5F5F5),
                              ),
                            ),
                            Positioned(
                              top: -2,
                              right: 10,
                              child: Visibility(
                                visible: !isClick,
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[50],
                                    radius: MediaQuery.of(context).size.width *
                                        0.02,
                                    child: Icon(
                                      Icons.check,
                                      size: MediaQuery.of(context).size.width *
                                          0.03,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
