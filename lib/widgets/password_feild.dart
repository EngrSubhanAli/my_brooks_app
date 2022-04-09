import 'package:brooks/utils/assets_manager.dart';
import 'package:brooks/widgets/prefix_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordFeild extends StatefulWidget {
  const PasswordFeild({Key? key, required this.passFieldHint})
      : super(key: key);
  final String passFieldHint;

  @override
  _PasswordFeildState createState() => _PasswordFeildState();
}

class _PasswordFeildState extends State<PasswordFeild> {
  late String password = '';
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return buildPassword();
  }

  Widget buildPassword() {
    return ScreenUtilInit(
      designSize: Size(325, 675),
      builder: () => Container(
        height: 40.h,
        width: 288.w,
        child: TextField(
          onChanged: (value) => setState(() => password = value),
          onSubmitted: (value) => setState(() => password = value),
          decoration: InputDecoration(
            // labelText: StringsManager.passLable,
            hintText: widget.passFieldHint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: PrefixIconWidget(
                bgImage: AssetImages.bgIconGray,
                iconImage: AssetImages.lockIcon,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() => isPasswordVisible = !isPasswordVisible);
              },
              icon: isPasswordVisible
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
          ),
          obscureText: isPasswordVisible,
        ),
      ),
    );
  }
}
