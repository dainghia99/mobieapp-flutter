import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius,
    this.padding,
    this.child,
    this.backgroundColor,
  });

  final double? width;
  final double? height;
  final double? radius;
  final double? padding;
  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: TColors.textWhite.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
