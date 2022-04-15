import 'package:brooks/views/EquipmentFinancing/EquipmentFinancingScreen.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../HardMoneyFinancing/HardMoneyFinancingScreen.dart';

class CommercialRealEstateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Commercial Real Estate'),
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
                UploadDocumentWidget(title: 'Financial statement'),
                SizedBox(height: 10.h),
                UploadDocumentWidget(title: 'Credit release'),
                SizedBox(height: 10.h),
                UploadDocumentWidget(title: 'Tax Returns File'),
                SizedBox(height: 10.h),
                UploadDocumentWidget(title: 'Mortgage notes 1'),
                SizedBox(height: 10.h),
                UploadDocumentWidget(title: 'Rent rolls and copies'),
                SizedBox(height: 10.h),
                UploadDocumentWidget(title: 'Pictures of subject property'),
                SizedBox(height: 10.h),
                UploadDocumentWidget(title: 'Appraisal Report'),
                SizedBox(height: 20.h),
                CustomSubmitButton(
                  title: 'SUBMIT',
                  routeTo: EquipmentFinancingScreen(),
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
