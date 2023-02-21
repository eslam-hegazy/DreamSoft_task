import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';
import 'package:dreamsoft/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    Key? key,
    required this.num,
  }) : super(key: key);
  final int num;
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeStyle: const BadgeStyle(
        borderSide: BorderSide(
          color: Colors.white,
          width: 1.6,
        ),
      ),
      position: BadgePosition.topEnd(end: -5),
      badgeContent: Text(
        num.toString(),
        style: TextStyle(color: Colors.white, fontSize: 9.sp),
      ),
      child: Icon(
        Icons.notifications_none,
        color: AppColor.kWhiteColor,
      ),
    );
  }
}
