import 'package:bai_tap_lon/features/shop/screens/detail_products/widgets/product_description.dart';
import 'package:bai_tap_lon/features/shop/screens/detail_products/widgets/product_detail_icon_check.dart';
import 'package:bai_tap_lon/features/shop/screens/detail_products/widgets/product_image_detail.dart';
import 'package:bai_tap_lon/features/shop/screens/detail_products/widgets/product_star.dart';
import 'package:bai_tap_lon/features/shop/screens/detail_products/widgets/product_title.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProductAtribute extends StatelessWidget {
  const TProductAtribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDartMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageProductDetail(dark: dark),
        const ProruductStar(),
        const ProductTitle(),
        const ProductDetailIconCheck(),
        ProductDetailDescription(dark: dark)
      ],
    );
  }
}
