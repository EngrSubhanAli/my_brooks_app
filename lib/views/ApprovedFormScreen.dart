import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../constants/Colors.dart';

class ApprovedFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 20.h,
                        width: 25.h,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(5.r),
                          boxShadow: [
                            BoxShadow(
                              color: greyColor,
                              spreadRadius: 0.1,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Image.asset(
                        'assets/images/logo.png',
                        scale: 2,
                      ),
                    ),
                    Icon(
                      Icons.person,
                      size: 40,
                      color: Color(0xff0E3793),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ('Approved Form'),
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff0E3793),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Hi, Applicant\'s Name'),
                      ],
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit. In risus neque, commodo quis luctus a, convallis quis sapien. Aliquam vitae pharetra nibh. Sed mollis interdum ante sit amet mollis. Vivamus efficitur tincidunt iaculis. Nunc dapibus urna turpis, sit amet malesuada massa ornare sit amet. Vivamus egestas, velit eget pretium feugiat, dolor tellus tincidunt nisi, sed vestibulum metus nunc quis magna.'),
                    SizedBox(height: 10),
                    Text(
                        'Fusce efficitur condimentum lacus, at mollis metus tempus et. Maecenas porta aliquam nunc, non fringilla mi laoreet maximus. Curabitur feugiat libero in lacus condimentum luctus. Mauris id urna semper, tempus odio eget, hendrerit nibh. Nam tempus lorem et risus sagittis, id suscipit sapien imperdiet. Sed ac felis pulvinar nunc feugiat eleifend. Sed fermentum at dolor eget aliquet. Morbi rutrum, ipsum sodales commodo tincidunt, felis risus elementum leo, non tincidunt leo ex et arcu. Etiam sed turpis eu orci venenatis aliquet at at lacus. Aliquam pretium urna eget magna mattis convallis')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
