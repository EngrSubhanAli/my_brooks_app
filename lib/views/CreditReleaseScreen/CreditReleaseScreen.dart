import 'package:brooks/constants/Colors.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ScheduleNo1Screen/AgreementDateWidget.dart';

class CreditReleaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'CREDIT RELEASE',
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text('I hereby authorize  '),
                    SizedBox(
                      height: 20.h,
                      width: 120.w,
                      child: TextField(
                        maxLength: 17,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none, counterText: ""),
                      ),
                    ),
                    Text(
                      ' to verify ',
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Text(
                    'any credit information from whatever source it deems appropriate. I further authorize our banks, trade references and financial institutions the right to release by telephone or fax all credit information requested by the Broker.'),
                Text(
                    'We understand that ANY information obtained will be treated confidentially. It will be used only in assisting applicant in securing business financing. '),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFieldWidget(
                      hint: '',
                      title: 'Authorized Signature',
                      height: 80.h,
                    ),
                    Text(
                      'Draw Your signature above',
                      style: GoogleFonts.roboto(
                        fontSize: 10.sp,
                        color: greyColor.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  title: 'Applicant Name',
                  hint: 'Applicant Name',
                ),
                SizedBox(height: 10.h),
                AgreementDateWidget(
                  title: 'Date',
                  titleColor: blackColor,
                ),
                SizedBox(height: 20.h),
                CustomSubmitButton(title: 'SUBMIT'),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
