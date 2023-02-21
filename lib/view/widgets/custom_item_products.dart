import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import 'package:dreamsoft/models/product_model.dart';
import 'package:dreamsoft/view/widgets/custom_text.dart';

import '../../core/app_color.dart';
import 'custom_svg_image.dart';

class CustomItemProduct extends StatelessWidget {
  const CustomItemProduct({
    Key? key,
    required this.e,
    this.height,
  }) : super(key: key);
  final ProductModel e;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: height?.h ?? 20.h,
          width: 45.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(e.image),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 45.w,
          color: Colors.grey.withOpacity(0.5),
          height: 2.5.h,
          child: CustomText(
            text: "${e.title} | ${e.type} | ${e.clas}",
            fontSize: 9,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              itemValue(
                  image: "assets/icons/Home - ad1.svg",
                  title: "Price",
                  value: e.price),
              SizedBox(width: 0.5.w),
              itemValue(
                  image: "assets/icons/Home - Ad2.svg",
                  title: "alsune",
                  value: e.date),
              SizedBox(width: 0.5.w),
              itemValue(
                  image: "assets/icons/Home - Ad3.svg",
                  title: "KM",
                  value: e.km),
              SizedBox(width: 0.5.w),
              itemValue(
                  image: "assets/icons/Home - Ad4.svg",
                  title: "Saved",
                  value: e.Guaranteed),
            ],
          ),
        ),
      ],
    );
  }

  Material itemValue(
      {required String image, required String title, required String value}) {
    return Material(
      borderRadius: BorderRadius.circular(0.3.h),
      elevation: 15,
      child: Container(
        width: 11.w,
        padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 1.2.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.3.h),
          color: AppColor.kWhiteColor,
        ),
        child: Column(
          children: [
            CustomSvgImage(
              image: image,
              size: 1.4,
            ),
            CustomText(text: title, fontSize: 7),
            CustomText(
              text: value,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
