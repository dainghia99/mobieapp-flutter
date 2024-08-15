import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class ProductDetailIconCheck extends StatelessWidget {
  const ProductDetailIconCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 0, bottom: 16),
      child: Row(
        children: [
          Text(
            "CockTail",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(width: 10),
          Icon(
            CupertinoIcons.checkmark_seal_fill,
            color: TColors.primary,
            size: TSizes.iconXs,
          ),
        ],
      ),
    );
  }
}
