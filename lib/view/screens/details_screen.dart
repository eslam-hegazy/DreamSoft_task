import 'package:dreamsoft/view/widgets/custom_button_check.dart';
import 'package:dreamsoft/view/widgets/custom_icon_button.dart';
import 'package:dreamsoft/view/widgets/custom_item_products.dart';
import 'package:dreamsoft/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:dreamsoft/models/product_model.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../core/app_color.dart';
import '../../core/constants.dart';
import '../widgets/custom_svg_image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.productModel,
  }) : super(key: key);
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              sliverAppBar(),
              bodySliverAppBar(),
            ],
          ),
        ],
      ),
    );
  }

  SliverAppBar sliverAppBar() {
    return SliverAppBar(
      backgroundColor: AppColor.kMainColor,
      toolbarHeight: 6.h,
      expandedHeight: 40.h,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          productModel.image,
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
      bottom: bottomSliver(),
    );
  }

  SliverToBoxAdapter bodySliverAppBar() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Row(
                children: [
                  CustomText(
                    text: "${productModel.type} in good condition",
                    color: AppColor.kMainColor,
                    fontSize: 14,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const CustomText(
                        text: "8,700",
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      CustomText(
                        text: " k.m",
                        fontWeight: FontWeight.w500,
                        color: AppColor.kMainColor,
                        fontSize: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            checkItem(),
            SizedBox(height: 2.h),
            Column(
              children: [
                itemCarDetails(
                  title: "Exterior Color",
                  value: CustomText(
                    text: productModel.detailsCarModel.outSide_color,
                    fontWeight: FontWeight.bold,
                    color: AppColor.kMainColor,
                  ),
                ),
                itemCarDetails(
                  title: "Interior Color",
                  value: CustomText(
                    text: productModel.detailsCarModel.iutSide_color,
                    fontWeight: FontWeight.bold,
                    color: AppColor.kMainColor,
                  ),
                ),
                itemCarDetails(
                  title: "Seat Type",
                  value: CustomText(
                    text: productModel.detailsCarModel.type_disk,
                    fontWeight: FontWeight.bold,
                    color: AppColor.kMainColor,
                  ),
                ),
                itemCarDetails(
                  title: "Sunroof",
                  value: productModel.detailsCarModel.sunroof
                      ? const Icon(Icons.done)
                      : const Icon(Icons.clear),
                ),
                itemCarDetails(
                  title: "Rear Camera",
                  value: productModel.detailsCarModel.camera
                      ? const Icon(Icons.done)
                      : const Icon(Icons.clear),
                ),
                itemCarDetails(
                  title: "Sensor",
                  value: CustomText(
                    text: productModel.detailsCarModel.sensor,
                    fontWeight: FontWeight.bold,
                    color: AppColor.kMainColor,
                  ),
                ),
                itemCarDetails(
                  title: "Cylinder",
                  value: CustomText(
                    text: productModel.detailsCarModel.cylinder.toString(),
                    fontWeight: FontWeight.bold,
                    color: AppColor.kMainColor,
                  ),
                ),
                itemCarDetails(
                  title: "Motion vector",
                  value: CustomText(
                    text: productModel.detailsCarModel.motion_vector,
                    fontWeight: FontWeight.bold,
                    color: AppColor.kMainColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            const CustomText(text: Constants.text),
            SizedBox(height: 2.h),
            itemProfile(),
            SizedBox(height: 2.h),
            SizedBox(
              height: 18.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomItemProduct(
                    e: productModel.moreProduct[index], height: 18),
                separatorBuilder: (context, index) => SizedBox(width: 1.w),
                itemCount: productModel.moreProduct.length,
              ),
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 2.3.h,
                    backgroundColor: Colors.green.withOpacity(0.3),
                    child: Icon(
                      Icons.call_outlined,
                      color: Colors.green,
                      size: 3.h,
                    ),
                  ),
                ),
                SizedBox(width: 1.w),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 2.3.h,
                    backgroundColor: Colors.blueAccent.withOpacity(0.3),
                    child: Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.blue,
                      size: 3.h,
                    ),
                  ),
                ),
                SizedBox(width: 1.w),
                CustomButtonCheck(
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: AppColor.kWhiteColor,
                    size: 3.h,
                  ),
                  title: "Car Location",
                  color: AppColor.kMainColor,
                  textColor: AppColor.kWhiteColor,
                  press: () {},
                ),
                SizedBox(width: 1.5.w),
                CustomButtonCheck(
                  icon: Icon(
                    Icons.bookmark_add_outlined,
                    color: AppColor.kMainColor,
                    size: 3.h,
                  ),
                  title: "Car Location",
                  color: AppColor.kWhiteColor,
                  textColor: AppColor.kMainColor,
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }

  Container itemProfile() {
    return Container(
      height: 6.h,
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.h),
        color: Colors.grey.withOpacity(0.5),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColor.kWhiteColor,
            radius: 2.5.h,
            child: CircleAvatar(
              radius: 2.2.h,
              backgroundImage: const NetworkImage(
                Constants.profile,
              ),
            ),
          ),
          SizedBox(width: 2.w),
          CustomText(
            text: "Yuken Auto Approved",
            fontWeight: FontWeight.w500,
            color: AppColor.kMainColor,
          ),
          const Spacer(),
          CustomText(
            text: "All cars",
            color: AppColor.kMainColor,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(width: 1.w),
        ],
      ),
    );
  }

  Container itemCarDetails({required String title, required Widget value}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.2.w),
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      height: 4.5.h,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const CustomSvgImage(
                  image: "assets/icons/Home - Ad3.svg",
                  size: 2,
                ),
                SizedBox(width: 2.w),
                CustomText(text: title, fontWeight: FontWeight.bold),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: value,
            ),
          ),
        ],
      ),
    );
  }

  Widget checkItem() {
    return Material(
      borderRadius: BorderRadius.circular(1.5.h),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        height: 4.5.h,
        decoration: BoxDecoration(
          color: const Color(0xFFa85c5c),
          borderRadius: BorderRadius.circular(1.5.h),
        ),
        child: Row(
          children: [
            Icon(
              Icons.verified_user_outlined,
              color: AppColor.kWhiteColor,
            ),
            SizedBox(width: 5.w),
            CustomText(
              text: "Guaranteed to ${productModel.km} KM",
              color: AppColor.kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }

  PreferredSize bottomSliver() {
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
                value: productModel.price),
            SizedBox(width: 5.w),
            itemDetails(
                image: "assets/icons/Home - Ad2.svg",
                title: "alsune",
                value: productModel.price),
            SizedBox(width: 5.w),
            itemDetails(
                image: "assets/icons/Home - Ad3.svg",
                title: "walkway",
                value: productModel.price),
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
}
