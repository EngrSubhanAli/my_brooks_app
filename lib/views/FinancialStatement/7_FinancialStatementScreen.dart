import 'package:brooks/views/FinancialStatement/8_FinancialStatementScreen.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/Colors.dart';

class FinancialStatementScreen_7 extends StatelessWidget {
  const FinancialStatementScreen_7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Financial Statement'),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Balance Sheet as of'),
                ),
                SizedBox(height: 10.h),
                Divider(thickness: 0.7, color: blackColor),
                Row(
                  children: [
                    Text('LIABILITIES'),
                    Spacer(),
                    Container(
                      height: 20.h,
                      child: VerticalDivider(
                        thickness: 1,
                        color: blackColor,
                        indent: 0,
                        endIndent: 0,
                      ),
                    ),
                    SizedBox(
                      width: 80.w,
                      child: Text('AMOUNT (\$)'),
                    ),
                  ],
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Notes Payable to Bank',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Secured',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Unsecured',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Notes Payable to Others',
                  subtitle: '(Schedule E)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Secured',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Unsecured',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Accounts Payable',
                  subtitle: '(including credit cards)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Margin Accounts',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Notes Due: Partnership',
                  subtitle: '(Schedule D)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Business/Partnership Market Value',
                  subtitle: '(Schedule D)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Taxes Payable',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Mortgage Debt',
                  subtitle: '(Schedule C)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Mortgage Debt',
                  subtitle: '(including automobiles)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Life Insurance Loans',
                  subtitle: '(Schedule B)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Other Liabilities (List):',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Other Assets',
                ),
                SizedBox(height: 20.h),
                CustomSubmitButton(
                  title: 'CONTINUE',
                  routeTo: FinancialStatementScreen_8(),
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

class FinancialStatementBalanceSheetAmoutWidget extends StatelessWidget {
  final String title;
  final String? subtitle;

  FinancialStatementBalanceSheetAmoutWidget({
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 180.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              subtitle == null
                  ? SizedBox()
                  : Text(
                      subtitle!,
                      style: GoogleFonts.roboto(fontSize: 8.sp),
                    ),
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 20.h,
          child: VerticalDivider(
            thickness: 1,
            color: blackColor,
            indent: 0,
            endIndent: 0,
          ),
        ),
        Container(
          width: 80.w,
          height: 22.h,
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: greyColor.withOpacity(0.2),
          ),
          child: TextField(
            maxLength: 8,
            keyboardType: TextInputType.number,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            decoration: InputDecoration(
              border: InputBorder.none,
              counterText: "",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
