import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';
import 'package:brooks/views/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/Colors.dart';
import 'SignUpScreen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              width: 1.sw,
              child: Column(
                children: [
                  SizedBox(height: 70.h),
                  Image.asset(
                    'assets/images/logo.png',
                    scale: 1.5,
                  ),
                  SizedBox(height: 50.h),
                  Container(
                    width: 280.w,
                    height: 300.h,
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: greyColor,
                          ),
                        ),
                        Text(
                          'Login to your account',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: greyColor,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        LogInTextField(
                          text: 'Email',
                          icon: Icons.email,
                        ),
                        SizedBox(height: 25.h),
                        LogInTextField(
                          text: 'Password',
                          icon: Icons.vpn_key_outlined,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forget password?',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffFF6565),
                            ),
                          ),
                        ),
                        SizedBox(height: 27),
                        CustomSubmitButton(
                          title: 'LOGIN',
                          routeTo: HomeScreen(),
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Text(
                              'Newbie Here?',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: greyColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SignUpScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: redColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 1.sw,
                child: Image.asset(
                  'assets/images/AuthScreenBottomImage.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogInTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  LogInTextField({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: blueColor.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(11),
                  bottomLeft: Radius.circular(11))),
          height: 38.h,
          width: 8.w,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xffF0F0F0),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(11),
                  bottomRight: Radius.circular(11))),
          height: 38.h,
          width: 240.w,
          child: Row(
            children: [
              SizedBox(width: 10.w),
              Icon(
                icon,
                size: 20,
                color: greyColor.withOpacity(0.6),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 200.w,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration:
                      InputDecoration(border: InputBorder.none, hintText: text),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
