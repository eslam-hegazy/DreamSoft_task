import 'package:dreamsoft/view/screens/detailsScreen/details_screen.dart';
import 'package:dreamsoft/view/widgets/custom_item_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'package:dreamsoft/models/product_model.dart';

import '../../core/app_color.dart';
import 'custom_svg_image.dart';
import 'custom_text.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    Key? key,
    required this.productData,
  }) : super(key: key);
  final List<ProductModel> productData;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: productData
          .map(
            (e) => InkWell(
              onTap: () {
                Get.to(() => DetailsScreen(productModel: e));
              },
              child: CustomItemProduct(e: e),
            ),
          )
          .toList(),
    );
  }
}
