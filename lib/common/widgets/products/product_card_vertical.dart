import 'package:bai_tap_lon/common/widgets/Icons/circular_icon.dart';
import 'package:bai_tap_lon/common/widgets/products/product_title_text.dart';
import 'package:bai_tap_lon/containers/rouned_container.dart';
import 'package:bai_tap_lon/containers/rouned_image.dart';
import 'package:bai_tap_lon/features/shop/screens/detail_products/detail_product.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDartMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
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
          borderRadius: BorderRadius.circular(16),
          color: dark ? TColors.grey : TColors.white,
        ),
        child: Column(
          children: [
            TRounedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dart : TColors.white,
              child: Stack(
                children: [
                  // --Thumbnails Image --
                  TextButton(
                    onPressed: () => Get.to(const ProductDetail()),
                    child: const Center(
                      child: TRounedImage(
                        imageUrl: TImages.producImage1,
                        applyImageRadius: true,
                      ),
                    ),
                  ),

                  // --Sale tag --
                  Positioned(
                    top: 12,
                    child: TRounedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.sm,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: TColors.black,
                            ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      dark: dark,
                      icon: CupertinoIcons.heart_fill,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const TProductTitleText(
                    title: "Đây là phần miêu tả",
                    smallSize: true,
                    maxLines: 2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "CockTail",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: TSizes.xs,
                      ),
                      const Icon(
                        CupertinoIcons.checkmark_seal_fill,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      )
                    ],
                  ),
                  // const Spacer(),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      Text(
                        "\$40.5",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dart,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              TSizes.cardRadiusMd,
                            ),
                            bottomRight: Radius.circular(2),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              CupertinoIcons.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
