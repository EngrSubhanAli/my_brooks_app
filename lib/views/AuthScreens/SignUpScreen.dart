import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../HomePage.dart';

import 'SignInScreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 0.95.sh,
                child: Column(
                  children: [
                    SizedBox(height: 70.h),
                    Image.asset(
                      'assets/images/logo.png',
                      scale: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.w, left: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff707070),
                            ),
                          ),
                          Text(
                            'Login to your account',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff707070),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          LogInTextField(
                            text: 'Full Name',
                            icon: Icons.person,
                          ),
                          SizedBox(height: 25.h),
                          LogInTextField(
                              text: 'Phone Number',
                              icon: Icons.phone_android_sharp),
                          SizedBox(height: 25.h),
                          LogInTextField(
                            text: 'Email',
                            icon: Icons.email,
                          ),
                          SizedBox(height: 25.h),
                          LogInTextField(
                            text: 'Password',
                            icon: Icons.vpn_key_outlined,
                          ),
                          SizedBox(height: 25.h),
                          CustomSubmitButton(
                            title: 'SIGN UP',
                            routeTo: HomeScreen(),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Text('Have an account?',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff707070))),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SignInScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  'Login.',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffD10005),
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
      ),
    );
  }
}
