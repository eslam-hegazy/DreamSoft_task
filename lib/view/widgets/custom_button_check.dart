import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../core/app_color.dart';
import 'custom_text.dart';

class CustomButtonCheck extends StatelessWidget {
  const CustomButtonCheck({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    required this.textColor,
    required this.press,
  }) : super(key: key);
  final Icon icon;
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.h),
        borderSide: BorderSide(color: AppColor.kMainColor),
      ),
      onPressed: press,
      child: Row(
        children: [
          icon,
          CustomText(
            text: title,
            color: textColor,
            fontSize: 9,
          ),
        ],
      ),
    );
  }
}
