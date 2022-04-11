import 'package:brooks/views/ConfidentialAgreement/ConfidentialAgreementScreen.dart';
import 'package:brooks/views/CreditReleaseScreen/CreditReleaseScreen.dart';
import 'package:brooks/views/EquipmentFinancing/EquipmentFinancingScreen.dart';
import 'package:brooks/views/HardMoneyFinancing/HardMoneyFinancingScreen.dart';
import 'package:brooks/views/NON-EXCLUSIVE%20FEE%20AGREEMENT/Non_ExclusiveScreen.dart';
import 'package:brooks/views/TermsofAgreement/TermsofAgreementScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Brooks',
        home: EquipmentFinancingScreen(),
        // initialRoute: '/',
        // onGenerateRoute: RouteGenerator.generateRoute,
      ),
      designSize: const Size(325, 706),
    );
  }
}
