import 'package:bai_tap_lon/containers/rouned_container.dart';
import 'package:bai_tap_lon/features/shop/screens/home/models/product.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ImageProductDetail extends StatelessWidget {
  const ImageProductDetail({
    super.key,
    required this.dark,
    required this.product,
  });

  final bool dark;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TRounedContainer(
        backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
        child: Column(
          children: [
            Container(
              height: 350,
              width: 350,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: TColors.grey,
                    blurRadius: 50,
                    spreadRadius: 7,
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(3),
                color: dark ? TColors.grey : TColors.white,
              ),
              child: Image.network(
                "http://localhost:5201${product.image}",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
