import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'views/splash_screen_view/splash_view.dart';

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
      builder: () => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Brooks',
        home: SplashScreen(),
        // initialRoute: '/',
        // onGenerateRoute: RouteGenerator.generateRoute,
      ),
      designSize: const Size(325, 706),
    );
  }
}
