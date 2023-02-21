// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// import '../../../../core/app_color.dart';
// import '../../../../core/constants.dart';
// import '../../../widgets/custom_button_check.dart';
// import '../../../widgets/custom_item_products.dart';
// import '../../../widgets/custom_svg_image.dart';
// import '../../../widgets/custom_text.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_color.dart';
import '../../../../core/constants.dart';
import '../../../../models/product_model.dart';
import '../../../widgets/custom_button_check.dart';
import '../../../widgets/custom_item_products.dart';
import '../../../widgets/custom_svg_image.dart';
import '../../../widgets/custom_text.dart';

SliverToBoxAdapter bodySliverAppBar(ProductModel model) {
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
                  text: "${model.type} in good condition",
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
          checkItem(model),
          SizedBox(height: 2.h),
          Column(
            children: [
              itemCarDetails(
                title: "Exterior Color",
                value: CustomText(
                  text: model.detailsCarModel.outSide_color,
                  fontWeight: FontWeight.bold,
                  color: AppColor.kMainColor,
                ),
              ),
              itemCarDetails(
                title: "Interior Color",
                value: CustomText(
                  text: model.detailsCarModel.iutSide_color,
                  fontWeight: FontWeight.bold,
                  color: AppColor.kMainColor,
                ),
              ),
              itemCarDetails(
                title: "Seat Type",
                value: CustomText(
                  text: model.detailsCarModel.type_disk,
                  fontWeight: FontWeight.bold,
                  color: AppColor.kMainColor,
                ),
              ),
              itemCarDetails(
                title: "Sunroof",
                value: model.detailsCarModel.sunroof
                    ? const Icon(Icons.done)
                    : const Icon(Icons.clear),
              ),
              itemCarDetails(
                title: "Rear Camera",
                value: model.detailsCarModel.camera
                    ? const Icon(Icons.done)
                    : const Icon(Icons.clear),
              ),
              itemCarDetails(
                title: "Sensor",
                value: CustomText(
                  text: model.detailsCarModel.sensor,
                  fontWeight: FontWeight.bold,
                  color: AppColor.kMainColor,
                ),
              ),
              itemCarDetails(
                title: "Cylinder",
                value: CustomText(
                  text: model.detailsCarModel.cylinder.toString(),
                  fontWeight: FontWeight.bold,
                  color: AppColor.kMainColor,
                ),
              ),
              itemCarDetails(
                title: "Motion vector",
                value: CustomText(
                  text: model.detailsCarModel.motion_vector,
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
              itemBuilder: (context, index) =>
                  CustomItemProduct(e: model.moreProduct[index], height: 18),
              separatorBuilder: (context, index) => SizedBox(width: 1.w),
              itemCount: model.moreProduct.length,
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
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
              ),
              Expanded(
                flex: 1,
                child: InkWell(
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
              ),
              SizedBox(width: 1.w),
              Expanded(
                flex: 3,
                child: CustomButtonCheck(
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
              ),
              SizedBox(width: 1.w),
              Expanded(
                flex: 3,
                child: CustomButtonCheck(
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

Widget checkItem(ProductModel model) {
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
            text: "Guaranteed to ${model.km} KM",
            color: AppColor.kWhiteColor,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    ),
  );
}
