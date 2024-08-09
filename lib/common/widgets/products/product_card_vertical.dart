import 'package:bai_tap_lon/containers/rouned_container.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDartMode(context);

    return Container(
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
        child: const Stack(
          children: [
            TRounedContainer(
              child: Text("Test"),
            )
          ],
        ));
  }
}
