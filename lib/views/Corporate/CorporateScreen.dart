import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CorporateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'CORPORATE'),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: 'Name',
                  title: 'OFFICERS / PARTNERS / OWNERS',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFieldWidget(
                      hint: 'Name',
                      title: '',
                      width: 133.w,
                    ),
                    CustomTextFieldWidget(
                      hint: 'Ownership %',
                      title: '',
                      width: 133.w,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                CustomTextFieldWidget(
                  hint: 'Name',
                  title: 'OFFICERS / PARTNERS / OWNERS',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFieldWidget(
                      hint: 'Name',
                      title: '',
                      width: 133.w,
                    ),
                    CustomTextFieldWidget(
                      hint: 'Ownership %',
                      title: '',
                      width: 133.w,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                CustomTextFieldWidget(
                  hint: 'Name',
                  title: 'OFFICERS / PARTNERS / OWNERS',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFieldWidget(
                      hint: 'Name',
                      title: '',
                      width: 133.w,
                    ),
                    CustomTextFieldWidget(
                      hint: 'Ownership %',
                      title: '',
                      width: 133.w,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                CustomTextFieldWidget(
                  hint: 'Name',
                  title: 'OFFICERS / PARTNERS / OWNERS',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFieldWidget(
                      hint: 'Name',
                      title: '',
                      width: 133.w,
                    ),
                    CustomTextFieldWidget(
                      hint: 'Ownership %',
                      title: '',
                      width: 133.w,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                CustomSubmitButton(title: 'CONTINUE'),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
