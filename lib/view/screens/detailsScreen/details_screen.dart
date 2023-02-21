import 'package:dreamsoft/view/widgets/custom_button_check.dart';
import 'package:dreamsoft/view/widgets/custom_icon_button.dart';
import 'package:dreamsoft/view/widgets/custom_item_products.dart';
import 'package:dreamsoft/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:dreamsoft/models/product_model.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_color.dart';
import '../../../core/constants.dart';
import '../../widgets/custom_svg_image.dart';
import 'detailsWidgets/custom_body_sliver_app_bar.dart';
import 'detailsWidgets/custom_sliver_app_bar.dart';

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
              sliverAppBar(productModel),
              bodySliverAppBar(productModel),
            ],
          ),
        ],
      ),
    );
  }
}
