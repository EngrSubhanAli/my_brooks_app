import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/Colors.dart';
import '7_FinancialStatementScreen.dart';

class FinancialStatementScreen_6 extends StatelessWidget {
  const FinancialStatementScreen_6({Key? key}) : super(key: key);

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
                    child: Text('Balance Sheet as of')),
                SizedBox(height: 10.h),
                Divider(thickness: 0.7, color: blackColor),
                Row(
                  children: [
                    Text('ASSETS'),
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
                  title: 'Cash in Bank',
                  subtitle: '(checking and savings accounts)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Cash in Other Financial Institutions',
                  subtitle: '(List) (including money market accounts, CDs)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Readily Marketable Securities',
                  subtitle: '(Schedule A)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Non-Readily Marketable Securities',
                  subtitle: '(Schedule A)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Accounts and Notes Receivable',
                  subtitle: '(List) (including money market accounts, CDs)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Net Cash Surrender Value of Life Insurance',
                  subtitle: '(Schedule B)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Residential Real Estate',
                  subtitle: '(Schedule C)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Cash in Other Financial Institutions',
                  subtitle: '(List) (including money market accounts, CDs)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Real Estate Investments',
                  subtitle: '(Schedule C)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Business/Partnership Market Value',
                  subtitle: '(Schedule D)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title:
                      'IRA, Keogh, Profit-Sharing & Other Vested Retirement Accts',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Deferred Income',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Personal Property',
                  subtitle: '(including automobiles)',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Other Assets',
                  subtitle: '(List):',
                ),
                Divider(thickness: 0.7, color: blackColor),
                FinancialStatementBalanceSheetAmoutWidget(
                  title: 'Other Assets',
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
