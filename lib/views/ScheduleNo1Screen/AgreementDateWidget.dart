import 'package:brooks/constants/Colors.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleScreenModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AgreementDateWidget extends StatefulWidget {
  final String title;
  final double? width;

  AgreementDateWidget({required this.title, this.width});

  @override
  State<AgreementDateWidget> createState() => _AgreementDateWidgetState();
}

class _AgreementDateWidgetState extends State<AgreementDateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.roboto(color: redColor),
          ),
          GestureDetector(
            onTap: () {
              DatePicker.showDatePicker(context,
                  theme: DatePickerTheme(
                    backgroundColor: blackColor,
                    headerColor: blueColor,
                    doneStyle: TextStyle(color: whiteColor),
                    cancelStyle: TextStyle(color: whiteColor),
                    itemStyle: TextStyle(
                      color: whiteColor,
                    ),
                  ),
                  showTitleActions: true,
                  minTime: DateTime(1900, 1, 1),
                  maxTime: DateTime(2024, 30, 12), onConfirm: (date) {
                setState(
                  () {
                    celebrityScheduleDate =
                        DateFormat('EEE, MMM d, ' 'yyyy').format(date);
                  },
                );
              }, currentTime: DateTime.now(), locale: LocaleType.en);
            },
            child: Container(
              width: widget.width == null ? 304.w : widget.width,
              height: 38.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: greyColor.withOpacity(0.1),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10.w),
                  Text(celebrityScheduleDate),
                  Spacer(),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 20.sp,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
