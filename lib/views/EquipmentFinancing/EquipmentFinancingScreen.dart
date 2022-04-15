import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../HardMoneyFinancing/HardMoneyFinancingScreen.dart';

class EquipmentFinancingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Equipment Financing'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('UPLOAD THE FOLLOWING DOCUMENTS'),
                ),
                SizedBox(height: 20.h),
                UploadDocumentWidget(
                  title: 'Credit release',
                  subtitle: 'Sign and return',
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title: 'Business entity docs',
                  subtitle:
                      '(articles of organization or incorporation, signed '
                      'operating agreement, certificate of good standing, statement of authority)',
                  subtitleFontSize: 8.sp,
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title: 'Business Tax Returns for past three years',
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title: 'Business Tax Returns for past three years',
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title:
                      'Three years fiscal year-end business financial statements',
                  titleFontSize: 12.sp,
                  subtitle: '(including balance sheets and income statements) ',
                  subtitleFontSize: 8.sp,
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title: 'Year to date business financial statements',
                  titleFontSize: 12.sp,
                  subtitle: '(including balance sheets and income statements)',
                  subtitleFontSize: 8.sp,
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title: 'Current Business Debt Schedule',
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title: 'Personal Tax Returns for past three years',
                  titleFontSize: 12.sp,
                  subtitle:
                      '(including all schedules) for principals owning 20% + of business',
                  subtitleFontSize: 8.sp,
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title:
                      'Personal Financial Statements for principals owning 20% + of business',
                  titleFontSize: 12.sp,
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title:
                      'Detailed list of equipment with descriptions and costs. '
                      'Please include shipping, installation, training and any maintenance '
                      'agreement costs.',
                  titleFontSize: 9.sp,
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title:
                      'Copy of the invoice or purchase and sales agreement for all equipment',
                  titleFontSize: 12.sp,
                ),
                SizedBox(height: 10.h),
                UploadDocumentWidget(
                  title:
                      'Full contact information for all proposed equipment vendors',
                  titleFontSize: 12.sp,
                ),
                SizedBox(height: 20.h),
                CustomSubmitButton(
                  title: 'SUBMIT',
                  routeTo: HardMoneyFinancingScreen(),
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
