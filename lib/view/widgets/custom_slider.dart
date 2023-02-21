import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    Key? key,
    required this.sliderData,
  }) : super(key: key);
  final List sliderData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return itemSlider(index);
        },
        itemCount: sliderData.length,
      ),
    );
  }

  Container itemSlider(int index) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(sliderData[index]),
        ),
      ),
    );
  }
}
