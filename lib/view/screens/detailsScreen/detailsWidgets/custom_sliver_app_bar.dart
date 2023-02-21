import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_color.dart';
import '../../../../models/product_model.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_svg_image.dart';
import '../../../widgets/custom_text.dart';

SliverAppBar sliverAppBar(ProductModel model) {
  return SliverAppBar(
    backgroundColor: AppColor.kMainColor,
    toolbarHeight: 6.h,
    expandedHeight: 40.h,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      background: Image.network(
        model.image,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    ),
    leading: CustomIconButton(
      iconColor: AppColor.kWhiteColor,
      icon: Icons.arrow_back,
      press: () {
        Get.back();
      },
    ),
    actions: [
      CustomIconButton(
          iconColor: AppColor.kWhiteColor,
          press: () {},
          icon: Icons.favorite_border_outlined),
      CustomIconButton(
        iconColor: AppColor.kWhiteColor,
        press: () {},
        icon: Icons.share,
      ),
    ],
    bottom: bottomSliver(model),
  );
}

PreferredSize bottomSliver(ProductModel model) {
  return PreferredSize(
    preferredSize: Size.fromHeight(10.h),
    child: Container(
      padding: EdgeInsets.only(bottom: 1.2.h),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          itemDetails(
              image: "assets/icons/Car Page - Slindr.svg",
              title: "engine",
              value: model.price),
          SizedBox(width: 5.w),
          itemDetails(
              image: "assets/icons/Home - Ad2.svg",
              title: "alsune",
              value: model.price),
          SizedBox(width: 5.w),
          itemDetails(
              image: "assets/icons/Home - Ad3.svg",
              title: "walkway",
              value: model.price),
        ],
      ),
    ),
  );
}

Material itemDetails(
    {required String image, required String title, required String value}) {
  return Material(
    borderRadius: BorderRadius.circular(1.5.h),
    elevation: 15,
    child: Container(
      width: 9.h,
      height: 9.h,
      padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 1.2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.5.h),
        color: AppColor.kWhiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomSvgImage(
            image: image,
            size: 2.5,
          ),
          CustomText(
            text: title,
            fontSize: 7,
            color: AppColor.kMainColor,
          ),
          CustomText(
            text: value,
            fontSize: 9,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    ),
  );
}
