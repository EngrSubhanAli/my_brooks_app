import 'package:brooks/views/FinancialStatement/7_FinancialStatementScreen.dart';

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
        home: FinancialStatementScreen_7(),
        // initialRoute: '/',
        // onGenerateRoute: RouteGenerator.generateRoute,
      ),
      designSize: const Size(325, 706),
    );
  }
}
