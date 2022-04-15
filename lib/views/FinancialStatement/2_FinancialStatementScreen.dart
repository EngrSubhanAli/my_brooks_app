import 'package:brooks/constants/Colors.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../ScheduleNo1Screen/AgreementDateWidget.dart';
import '3_FinancialStatementScreen.dart';

class FinancialStatementScreen_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Financial statement'),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('PERSONAL INFORMATION'),
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Name',
                  title: 'CO-APPLICANT (NAME)',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Employer',
                  title: 'Employer',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Address',
                  title: 'Address of Employer',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Phone No.',
                  title: 'Business Phone No.',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Years',
                  title: 'No. of Years with Employer',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Title/position',
                  title: 'Title/position',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Name & Position',
                  title: 'Name of previous employer & position',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Years',
                  title: 'No. of Years with previouse Employer',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Address',
                  title: 'Home Address',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Phone No',
                  title: 'Home Phone No',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Social Security No',
                  title: 'Social Security No',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                AgreementDateWidget(
                  title: 'Date of Birth',
                  titleColor: blackColor,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Name & Phone',
                  title: 'Name, Phone No. of your Accountant',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Name & Phone',
                  title: 'Name, Phone No. of your Attorney',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Name & Phone',
                  title: 'Name, Phone No. of your Investment Advisor/Broker',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Name & Phone',
                  title: 'Name, Phone No. of your insurance Advisor',
                  titleFontSize: 10.sp,
                ),
                SizedBox(height: 20.h),
                CustomSubmitButton(
                  title: 'CONTINUE',
                  routeTo: FinancialStatementScreen_3(),
                ),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
