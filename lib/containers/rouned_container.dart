import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TRounedContainer extends StatelessWidget {
  const TRounedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 1,
    this.child,
    this.showBorder = false,
    this.borderColor = TColors.borderPrimary,
    this.backgroundColor = TColors.white,
    this.padding,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      padding: padding,
      margin: margin,
      child: child,
    );
  }
}
