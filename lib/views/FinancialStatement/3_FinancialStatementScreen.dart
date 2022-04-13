import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/Colors.dart';
import '7_FinancialStatementScreen.dart';

class FinancialStatementScreen_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Financial Statement'),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Cash Income & Expenditures Statement For Year Ended'),
                ),
                SizedBox(height: 10.h),
                Divider(thickness: 0.7, color: blackColor),
                Row(
                  children: [
                    Text('ANNUAL INCOME'),
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
                  title: 'Salary (applicant)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Salary (co-applicant)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Bonuses & Commissions (applicant)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Bonuses & Commissions (co-applicant)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Rental Income',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Interest Income',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Dividend Income',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Capital Gains',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Business / Partnership Income',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Other Investment Income',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Other Income (List)* *',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Social Security Income',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Pension Income',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'TOTAL EXPENDITURES',
                ),
                SizedBox(height: 20.h),
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
