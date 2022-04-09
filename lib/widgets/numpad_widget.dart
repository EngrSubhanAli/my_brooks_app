import 'package:brooks/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumPad extends StatelessWidget {
  final double? buttonSize;
  final Color? buttonColor;
  final Color? iconColor;
  final TextEditingController controller;
  final Function delete;
  // final Function onSubmit;
  final int state;

  const NumPad({
    Key? key,
    this.state = 1,
    this.buttonSize = 50,
    this.buttonColor = Colors.indigo,
    this.iconColor = Colors.black,
    required this.delete,
    // required this.onSubmit,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => state == 1
          ? Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildSpaceVertical(5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        number: 1,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                      NumberButton(
                        number: 2,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                      NumberButton(
                        number: 3,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                    ],
                  ),
                  buildSpaceVertical(5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        number: 4,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                      NumberButton(
                        number: 5,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                      NumberButton(
                        number: 6,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                    ],
                  ),
                  buildSpaceVertical(5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        number: 7,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                      NumberButton(
                        number: 8,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                      NumberButton(
                        number: 9,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                    ],
                  ),
                  buildSpaceVertical(5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NumberButton(
                        symbol: ".",
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                      NumberButton(
                        number: 0,
                        size: buttonSize!,
                        color: buttonColor!,
                        txColor: Colors.black,
                        txSize: 16.sp,
                        controller: controller,
                      ),
                      NumberButton(
                          state: 2,
                          size: 40.sp,
                          color: Colors.white,
                          onpress: delete,
                          controller: controller),
                    ],
                  ),
                  buildSpaceVertical(5.h),
                ],
              ),
            )
          : Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumberButton(
                    number: 25,
                    size: buttonSize!,
                    color: Colors.red,
                    txColor: Colors.white,
                    txSize: 11.sp,
                    controller: controller,
                  ),
                  NumberButton(
                    number: 20,
                    size: buttonSize!,
                    color: Color(0xFF26A3BF),
                    txColor: Colors.white,
                    txSize: 11.sp,
                    controller: controller,
                  ),
                  NumberButton(
                    number: 15,
                    size: buttonSize!,
                    color: Colors.yellow,
                    txColor: Colors.white,
                    txSize: 11.sp,
                    controller: controller,
                  ),
                  NumberButton(
                    number: 10,
                    size: buttonSize!,
                    color: Colors.green,
                    txColor: Colors.white,
                    txSize: 11.sp,
                    controller: controller,
                  ),
                  NumberButton(
                    number: 5,
                    size: buttonSize!,
                    color: Colors.white,
                    txColor: Colors.black,
                    txSize: 11.sp,
                    controller: controller,
                  ),
                ],
              ),
            ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int? number;
  final String? symbol;
  final double? size;
  final Color? color;
  final double? txSize;
  final Color? txColor;
  final TextEditingController? controller;
  final int state;
  final Function? onpress;

  const NumberButton({
    Key? key,
    this.number,
    required this.size,
    required this.color,
    this.txColor,
    this.txSize,
    required this.controller,
    this.state = 1,
    this.onpress,
    this.symbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return state == 1
        ? SizedBox(
            width: size!,
            height: size!,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                primary: color!,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size! / 2),
                ),
              ),
              onPressed: () {
                if (number == null) {
                  controller!.text += symbol!;
                } else {
                  controller!.text += number.toString();
                }
                // print("controller Have : ${controller.text}");
              },
              child: Text(
                number == null ? symbol! : number.toString(),
                style: TextStyle(color: txColor!, fontSize: txSize!),
              ),
            ),
          )
        : SizedBox(
            width: size!,
            height: size!,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: color!,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size! / 2),
                ),
              ),
              onPressed: () => onpress!(),
              child: Image.asset(
                'assets/icons/icon_ios_cross.png',
              ),
            ),
          );
  }
}
