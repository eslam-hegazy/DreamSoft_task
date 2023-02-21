import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.horizontal,
    this.vertical,
    this.maxLines,
  }) : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? horizontal;
  final double? vertical;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontal?.w ?? 0, vertical: vertical?.h ?? 0),
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines ?? 50,
        style: TextStyle(
            color: color,
            fontSize: fontSize?.sp ?? 12.sp,
            fontWeight: fontWeight),
      ),
    );
  }
}
