import 'package:brooks/views/ConfidentialAgreement/ConfidentialAgreementScreen.dart';
import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsofAgreementScreen extends StatelessWidget {
  const TermsofAgreementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Terms of Agreement'),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                    'This agreement will begin on the date above and will end at closing when loan is funded.  Client has requested Broker’s assistance in securing financing.'),
                SizedBox(height: 10.h),
                Text(
                    'Broker will seek funding for the Client utilizing Broker’s resources and network of lenders both locally and nationally with the objective of finding the best rate and terms available for this type of loan facility(s) requested.  Broker’s goal is to place the client within 30 days with a bonafide direct lender(s) who will provide desired financing.'),
                SizedBox(height: 10.h),
                Text(
                    'For work performed in accordance with this agreement Broker will assess a “Success Fee” directly to the Client for FEE% of any and all amounts funded.  NO “Success Fee” will be assessed or paid in the event that Broker is unable to obtain funding.'),
                SizedBox(height: 10.h),
                Text(
                    'Broker will act as an independent contractor in the performance of its duties under this contract.  Accordingly, the Broker shall be responsible for payment of all taxes, including; Federal, State and local taxes arising out of the Brokers activities in accordance with this contract, including by way of illustration but not limitation, Federal and State income tax, Social Security tax, Unemployment Insurance taxes, and any other taxes or business license fee as required.'),
                SizedBox(height: 10.h),
                Text(
                    'All information obtained from Client, including but not limited to information regarding business, personal, financial or other affairs, will be treated by the Broker in full confidentiality in accordance to this contract and will not be revealed to any other persons, firms /or organizations outside of the prospective direct lenders.'),
                SizedBox(height: 10.h),
                Text(
                    'The Broker may engage with a number of lenders locally and nationally to utilize their lending products/facilities and may provide financial information to the selected lenders upon request. Once an established Lender has been selected, the Client will be referred accordingly and is responsible for meeting the underwriting guidelines prescribed by the lender.'),
                SizedBox(height: 10.h),
                Text(
                    'Both Client and Broker hereby agree to the above contract:'),
                SizedBox(height: 10.h),
                CustomTextFieldWidget(
                  hint: '',
                  title: 'Client Signature',
                  height: 120.h,
                ),
                SizedBox(height: 20.h),
                CustomSubmitButton(
                  title: 'Submit',
                  routeTo: ConfidentialAgreementScreen(),
                ),
                SizedBox(height: 70.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
