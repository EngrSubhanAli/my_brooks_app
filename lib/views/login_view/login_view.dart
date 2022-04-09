import 'package:brooks/constants/constants.dart';
import 'package:brooks/utils/assets_manager.dart';
import 'package:brooks/utils/strings_manager.dart';
import 'package:brooks/views/home_page_view/home_page_view.dart';
import 'package:brooks/widgets/button_widget.dart';
import 'package:brooks/widgets/password_feild.dart';
import 'package:brooks/widgets/text_feild_widget.dart';
import 'package:brooks/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(325, 674),
      builder: () => Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.w,
                ),
                child: Column(
                  children: [
                    buildSpaceVertical(60.h),
                    Image.asset(
                      AssetImages.logo,
                      height: 68.h,
                      width: 226.w,
                    ),
                    buildSpaceVertical(45.h),
                    Row(
                      children: [
                        buildSpaceHorizontal(10.w),
                        TextWidget(
                          text: StringsManager.welcomeback,
                          textSize: 20.sp,
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        buildSpaceHorizontal(10.w),
                        TextWidget(
                          text: StringsManager.loginto,
                          textSize: 16.sp,
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                    buildSpaceVertical(30.h),
                    const TextFieldWidget(
                      textfieldHint: StringsManager.email,
                      prefixIcon: AssetImages.emailIcon,
                    ),
                    buildSpaceVertical(23.h),
                    const PasswordFeild(
                      passFieldHint: StringsManager.passHint,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => ForgetPassowrd(),
                            //   ),
                            // );
                          },
                          child: TextWidget(
                            text: StringsManager.forgotpass,
                            textSize: 12.sp,
                            textColor: Colors.red,
                          )),
                    ),
                    buildSpaceVertical(16.h),
                    ButtonWidget(
                      buttonText: StringsManager.signInBtn,
                      ontap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePageScreen()));
                      },
                    ),
                    buildSpaceVertical(18.h),
                    Row(
                      children: [
                        TextWidget(
                          text: StringsManager.welcomeback,
                          textSize: 16.sp,
                          textColor: Colors.black,
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => const SignUpScreen()));
                            // Navigator.of(context).pushNamed('/signUp');
                          },
                          child: TextWidget(
                            text: StringsManager.signUpTxt,
                            textSize: 16.sp,
                            textColor: Color(0xff85A0F2),
                          ),
                        ),
                      ],
                    ),
                    buildSpaceVertical(18.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: kdivider,
                        ),
                        buildSpaceHorizontal(10.w),
                        TextWidget(
                          text: StringsManager.signInOpt,
                          textSize: 18.sp,
                          textColor: Color(0xFF707070),
                        ),
                        buildSpaceHorizontal(10.w),
                        Expanded(
                          child: kdivider,
                        ),
                      ],
                    ),
                    buildSpaceVertical(18.h),
                    buildSpaceVertical(8.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
