import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class ImageSignUp extends StatelessWidget {
  const ImageSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(
        TImages.dartAppLogo,
      ),
      width: 150,
      height: 150,
    );
  }
}
