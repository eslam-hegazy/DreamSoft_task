import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import '../../core/app_color.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.press,
    required this.icon,
    this.radius,
    this.color,
    this.iconColor,
  }) : super(key: key);
  final VoidCallback press;
  final IconData icon;
  final double? radius;
  final Color? color;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: CircleAvatar(
        radius: radius?.h ?? 2.5.h,
        backgroundColor: color ?? Colors.grey.withOpacity(0.4),
        child: Icon(
          icon,
          color: iconColor ?? AppColor.kBlackColor,
        ),
      ),
    );
  }
}
