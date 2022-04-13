import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/Colors.dart';
import '7_FinancialStatementScreen.dart';

class FinancialStatementScreen_4 extends StatelessWidget {
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
                    Text('ANNUAL EXPENDITURES'),
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
                  title: 'Federal Income and Other Taxes',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'State Income and Other Taxes',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Property Taxes',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Mortgage Principal',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Mortgage Interest ',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Installment & Revolving Credit Card Debt',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Insurance (car, life, health, home',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Investments',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'IRA & other deductible retirement pmts',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Tuition / Child Support / Daycare',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Other Living Expense',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Medical and Dental Expenses',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Other Expense (List)',
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
