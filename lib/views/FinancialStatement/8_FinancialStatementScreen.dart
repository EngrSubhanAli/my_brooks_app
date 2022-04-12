import 'package:brooks/constants/Colors.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinancialStatementScreen_8 extends StatefulWidget {
  @override
  State<FinancialStatementScreen_8> createState() =>
      _FinancialStatementScreen_8State();
}

class _FinancialStatementScreen_8State extends State<FinancialStatementScreen_8> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Financial Statement',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Text('CONTINGENT LIABILITIES'),
                Divider(thickness: 0.7, color: blackColor),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('LIABILITIES'),
                    Text('AMOUNT (\$)'),
                  ],
                ),
                Divider(thickness: 0.7, color: blackColor),
                Text(
                  'Are you a guarantor, co-maker, or endorser for any debt '
                  'of an individual,  corporation, or partnership?',
                ),
                YesNoAmountWidget(),
                Divider(thickness: 0.7, color: blackColor),
                Text(
                  'Do you have any outstanding letters of credit or surety bonds?',
                ),
                YesNoAmountWidget(),
                Divider(thickness: 0.7, color: blackColor),
                Text(
                  'Are there any suits or legal actions pending against you?',
                ),
                YesNoAmountWidget(),
                Divider(thickness: 0.7, color: blackColor),
                Text(
                  'Are you contingently liable on any lease or contract?',
                ),
                YesNoAmountWidget(),
                Divider(thickness: 0.7, color: blackColor),
                Text(
                  'Are any of your tax obligations past due?',
                ),
                YesNoAmountWidget(),
                Divider(thickness: 0.7, color: blackColor),
                Text(
                  'What would be your total estimated tax liability if you were to sell your major assets?',
                ),
                YesNoAmountWidget(),
                Text('If yes for any of the above, give details:'),
                CustomTextFieldWidget(
                  hint: 'Details...',
                  title: '',
                  height: 70.h,
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

class YesNoAmountWidget extends StatefulWidget {
  const YesNoAmountWidget({Key? key}) : super(key: key);

  @override
  State<YesNoAmountWidget> createState() => _YesNoAmountWidgetState();
}

class _YesNoAmountWidgetState extends State<YesNoAmountWidget> {
  Object radioValue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: radioValue,
              onChanged: (value) {
                setState(
                  () {
                    radioValue = value!;
                  },
                );
              },
            ),
            Text('Yes'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: radioValue,
              onChanged: (value) {
                setState(
                  () {
                    radioValue = value!;
                  },
                );
              },
            ),
            Text('No'),
          ],
        ),
        Spacer(),
        Text('AMOUNT'),
        SizedBox(width: 10.w),
        Container(
          width: 53.w,
          height: 22.h,
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: greyColor.withOpacity(0.2),
          ),
          child: TextField(
            maxLength: 3,
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
