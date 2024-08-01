import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TFooter extends StatelessWidget {
  const TFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(TImages.facebookAppLogo),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(TImages.googleAppLogo),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
