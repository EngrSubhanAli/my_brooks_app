import 'package:brooks/utils/assets_manager.dart';
import 'package:brooks/widgets/prefix_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {Key? key, required this.textfieldHint, required this.prefixIcon})
      : super(key: key);

  final String textfieldHint;
  final String prefixIcon;
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final textController = TextEditingController();
  @override
  void initState() {
    super.initState();
    textController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return textFieldWidget();
  }

  Widget textFieldWidget() {
    return ScreenUtilInit(
      designSize: Size(325, 674),
      builder: () => Container(
        // width: ,
        height: 40.h,
        width: 288.w,
        child: TextField(
          controller: textController,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            hintText: widget.textfieldHint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            prefixIcon: PrefixIconWidget(
              bgImage: AssetImages.bgIconGray,
              iconImage: widget.prefixIcon,
            ),
            suffixIcon: textController.text.isEmpty
                ? Container(width: 1.w)
                : IconButton(
                    onPressed: () => textController.clear(),
                    icon: const Icon(Icons.close),
                  ),
          ),
        ),
      ),
    );
  }
}
