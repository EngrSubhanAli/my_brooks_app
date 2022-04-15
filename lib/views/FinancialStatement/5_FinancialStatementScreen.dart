import 'package:brooks/constants/Colors.dart';
import 'package:brooks/views/FinancialStatement/6_FinancialStatementScreen.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FinancialStatementScreen_5 extends StatefulWidget {
  @override
  State<FinancialStatementScreen_5> createState() =>
      _FinancialStatementScreen_5State();
}

class _FinancialStatementScreen_5State
    extends State<FinancialStatementScreen_5> {
  bool YesNoButton = true;

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
                SizedBox(height: 20.h),
                Text('Cash Income & Expenditures Statement For Year Ended'),
                SizedBox(height: 10.h),
                Text(
                    'Any significant changes expected in the next 1 2 months?'),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        YesNoButton = true;
                      },
                      child: Container(
                        width: 125.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: YesNoButton
                              ? blueColor
                              : greyColor.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text(
                            'Yes',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: YesNoButton ? whiteColor : greyColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        YesNoButton = false;
                      },
                      child: Container(
                        width: 125.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: YesNoButton
                              ? greyColor.withOpacity(0.2)
                              : blueColor,
                        ),
                        child: Center(
                          child: Text(
                            'No',
                            style: GoogleFonts.roboto(
                              fontSize: 12.sp,
                              color: YesNoButton ? greyColor : whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  //TODO: Implement Function Here.
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/AppraisalReportImage.png',
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  '* Income from alimony, child support, or separate '
                  'maintenance income need not be revealed if the '
                  'applicant or co-applicant does not wish to have it '
                  'considered as a basis for repaying this obligation.',
                ),
                SizedBox(height: 30.h),
                CustomSubmitButton(
                  title: 'CONTINUE',
                  routeTo: FinancialStatementScreen_6(),
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
