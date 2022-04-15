import 'package:brooks/views/ScheduleNo1Screen/ScheduleNo1Screen.dart';

import 'package:flutter/material.dart';
import '../HomePage.dart';

import 'SignInScreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 108),
                    child: Image(image: AssetImage('images/brooks.png')),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 53, left: 52),
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
                    SizedBox(
                      height: 16,
                    ),
                    LogInTextField(
                      text: 'Full Name',
                      icon: Icons.person,
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    LogInTextField(
                        text: 'Phone Number', icon: Icons.phone_android_sharp),
                    SizedBox(
                      height: 27,
                    ),
                    LogInTextField(
                      text: 'Email',
                      icon: Icons.email,
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    LogInTextField(
                      text: 'Password',
                      icon: Icons.vpn_key_outlined,
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    CustomSubmitButton(
                      title: 'SIGN UP',
                      routeTo: HomeScreen(),
                      
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Text('Have an account?',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff707070))),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignInScreen();
                            }));
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
              Spacer(),
              Container(
                  width: double.infinity,
                  child: Image.asset(
                    'images/mask.png',
                    fit: BoxFit.fitWidth,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
