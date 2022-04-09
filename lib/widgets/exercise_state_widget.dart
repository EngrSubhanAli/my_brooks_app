import 'package:brooks/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExerciseStateWidget extends StatelessWidget {
  const ExerciseStateWidget({
    Key? key,
    required this.stateText,
    // required this.ontap,
    required this.stateImage,
  }) : super(key: key);

  final String stateText;
  final String stateImage;
  // final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(325, 674),
      builder: () => Row(
        children: [
          TextWidget(text: stateText, textSize: 18.sp, textColor: Colors.black),
          Expanded(
            child: Divider(
              thickness: 3.0,
              endIndent: 0,
              indent: 10,
              color: Colors.grey[200],
            ),
          ),
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              radius: 14.r,
              backgroundColor: Colors.grey[200],
              backgroundImage: AssetImage(
                stateImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
