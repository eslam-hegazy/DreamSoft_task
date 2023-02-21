import 'package:dreamsoft/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      child: Material(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.h),
          borderSide: BorderSide(
            color: AppColor.kMainColor,
          ),
        ),
        child: TextFormField(
          controller: controller,
          // textAlign: TextAlign.center,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: const Icon(Icons.search),
            ),
            hintText: "                Find your car",
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
