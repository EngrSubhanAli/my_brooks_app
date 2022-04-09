import 'package:brooks/utils/assets_manager.dart';
import 'package:brooks/utils/strings_manager.dart';
import 'package:brooks/widgets/prefix_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailFeild extends StatefulWidget {
  const EmailFeild({Key? key}) : super(key: key);

  @override
  _EmailFeildState createState() => _EmailFeildState();
}

class _EmailFeildState extends State<EmailFeild> {
  final emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return buildEmail();
  }

  Widget buildEmail() {
    return ScreenUtilInit(
      designSize: Size(325, 706),
      builder: () => Container(
        width: 288.w,
        height: 40.h,
        child: TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            // labelText: StringsManager.emailLable,
            hintText: StringsManager.emailHint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            prefixIcon: const PrefixIconWidget(
              bgImage: AssetImages.bgIconGray,
              iconImage: AssetImages.emailIcon,
            ),
            suffixIcon: emailController.text.isEmpty
                ? Container()
                : IconButton(
                    onPressed: () => emailController.clear(),
                    icon: const Icon(Icons.close),
                  ),
          ),
        ),
      ),
    );
  }
}
