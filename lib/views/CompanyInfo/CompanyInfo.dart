import 'package:brooks/constants/Colors.dart';
import 'package:brooks/views/AccountsRecievableInformation/AccountsRecievableInformationScreen.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyInfo extends StatefulWidget {
  @override
  State<CompanyInfo> createState() => _CompanyInfoState();
}

class _CompanyInfoState extends State<CompanyInfo> {
  String? selectedValue;
  List<String> items = [
    'Business Form 1',
    'Business Form 2',
    'Business Form 3',
    'Business Form 4',
    'Business Form 5',
    'Business Form 6',
    'Business Form 7',
    'Business Form 8',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'COMPANY INFORMATION',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Container(
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title:
                        'Legal Name of Company on Articles of Incorporation:',
                    hint: 'Name of Company',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'DBA (if applicable):',
                    hint: 'DBA',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'Contact Person Name & Title:',
                    hint: 'Name & Title',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'Address',
                    hint: 'Address',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'Phone number',
                    hint: 'Phone',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'Fax number',
                    hint: 'Fax',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'Email',
                    hint: 'Email',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'Type of Business:',
                    hint: 'Type of Business',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'Date Business Started:',
                    hint: 'Date Business Started',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'State of Incorporation/Registration:',
                    hint: 'Incorporation/Registration',
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFieldWidget(
                    title: 'Number of employees:',
                    hint: 'Date Business Started',
                  ),
                  SizedBox(height: 10.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Legal form of business:'),
                      CustomDropdownButton2(
                        buttonWidth: 302.w,
                        buttonHeight: 38.h,
                        buttonDecoration: BoxDecoration(
                          color: greyColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        dropdownWidth: 302.w,
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hint: 'Select Item',
                        dropdownItems: items,
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  CustomSubmitButton(
                    title: 'CONTINUE',
                    routeTo: AccountsRecievableInformationScreen(),
                  ),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
