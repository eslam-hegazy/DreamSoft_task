import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import 'package:dreamsoft/models/store_model.dart';

import '../../core/app_color.dart';
import 'custom_text.dart';

class CustomStore extends StatelessWidget {
  const CustomStore({
    Key? key,
    required this.storeData,
  }) : super(key: key);
  final List<StoreModel> storeData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => storeItem(storeData[index]),
        separatorBuilder: (context, index) => SizedBox(
          width: 5.w,
        ),
        itemCount: storeData.length,
      ),
    );
  }

  Column storeItem(StoreModel data) {
    return Column(
      children: [
        CircleAvatar(
          radius: 4.5.h,
          backgroundColor: AppColor.kRedColor,
          child: CircleAvatar(
            radius: 4.3.h,
            backgroundColor: AppColor.kWhiteColor,
            child: Container(
              height: 7.7.h,
              width: 7.7.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.h),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    data.image,
                  ),
                ),
              ),
            ),
          ),
        ),
        CustomText(text: data.title, vertical: 1, maxLines: 1),
      ],
    );
  }
}
