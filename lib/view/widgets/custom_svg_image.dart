import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import 'package:dreamsoft/core/app_color.dart';

class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({
    Key? key,
    required this.image,
    required this.size,
  }) : super(key: key);
  final String image;
  final double size;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      fit: BoxFit.fill,
      height: size.h,
    );
  }
}
