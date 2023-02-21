import 'dart:math';

import 'package:dreamsoft/controller/home_controller.dart';
import 'package:dreamsoft/core/app_color.dart';
import 'package:dreamsoft/core/constants.dart';

import 'package:dreamsoft/view/widgets/Custom_Text_Field.dart';
import 'package:dreamsoft/view/widgets/custom_badge.dart';
import 'package:dreamsoft/view/widgets/custom_chip.dart';
import 'package:dreamsoft/view/widgets/custom_grid_view.dart';
import 'package:dreamsoft/view/widgets/custom_slider.dart';
import 'package:dreamsoft/view/widgets/custom_store.dart';

import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Constants.changeStatusBar(
        colorStatus: AppColor.kMainColor,
        systemUiOverlayStyle: SystemUiOverlayStyle.dark);
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      drawer: const Drawer(),
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 8.h,
                padding: EdgeInsets.symmetric(horizontal: 1.2.w),
                color: AppColor.kMainColor,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, color: AppColor.kWhiteColor),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        controller.changeNotify();
                      },
                      icon: GetBuilder<HomeController>(
                        init: HomeController(),
                        builder: (controller) {
                          return CustomBadge(num: controller.notifyNum);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              CustomStore(
                storeData: controller.storeData,
              ),
              CustomSlider(sliderData: controller.sliderData),
              CustomTextField(controller: searchController),
              CustomChip(chipData: controller.chipData),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                child: CustomGridView(productData: controller.productData),
              ),
              bottomImage(),
            ],
          ),
        ),
      ),
    );
  }

  Container bottomImage() {
    return Container(
      height: 25.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/Image5.png"),
        ),
      ),
    );
  }
}
