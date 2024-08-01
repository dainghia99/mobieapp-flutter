import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(dark ? TImages.dartAppLogo : TImages.dartAppLogo),
          height: 250,
          width: 250,
        ),
        Text(
          "Đăng nhập",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          "Đăng nhập nhanh chóng và tiện lợi",
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
