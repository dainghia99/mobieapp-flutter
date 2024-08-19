import 'package:bai_tap_lon/features/shop/screens/detail_products/widgets/product_atributes.dart';
import 'package:bai_tap_lon/features/shop/screens/home/models/product.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chi Tiết Sản Phẩm',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w700,
            color: TColors.primary,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          TProductAtribute(product: product),
        ],
      ),
    );
  }
}
