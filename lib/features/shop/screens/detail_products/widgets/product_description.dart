import 'package:bai_tap_lon/containers/rouned_container.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductDetailDescription extends StatelessWidget {
  const ProductDetailDescription({
    super.key,
    required this.dark,
    required this.description,
    required this.price,
  });

  final bool dark;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 30.0, right: 30.0, top: 4.0, bottom: 6),
      child: TRounedContainer(
        height: 200,
        backgroundColor: dark ? TColors.grey : TColors.white,
        child: Container(
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Thông tin chi tiết",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Giá: ${price.toString()} VND",
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mô tả: ",
                    ),
                    Flexible(
                      child: Text(
                        description,
                        maxLines: 4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
