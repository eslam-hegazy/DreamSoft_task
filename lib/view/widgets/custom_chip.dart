import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import 'package:dreamsoft/models/chip_model.dart';
import 'package:dreamsoft/view/widgets/custom_text.dart';

import '../../core/app_color.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    Key? key,
    required this.chipData,
  }) : super(key: key);
  final List<ChipModel> chipData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Wrap(
        alignment: WrapAlignment.center,
        direction: Axis.horizontal,
        spacing: 3.w,
        children: chipData
            .map(
              (e) => ActionChip(
                elevation: 8.0,
                label: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.4.h, horizontal: 3.w),
                  child: CustomText(
                    text: e.title,
                    fontSize: 10,
                    color: e.press == true
                        ? AppColor.kBlackColor
                        : AppColor.kWhiteColor,
                  ),
                ),
                onPressed: () {},
                backgroundColor:
                    e.press == true ? Colors.grey : AppColor.kMainColor,
              ),
            )
            .toList(),
      ),
    );
  }
}
