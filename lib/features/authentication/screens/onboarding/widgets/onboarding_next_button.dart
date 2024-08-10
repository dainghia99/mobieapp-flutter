import 'package:bai_tap_lon/features/authentication/controllers/onboarding.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:bai_tap_lon/utils/devices/device_untility.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDartMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUntility.getButtonNavigationHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.white : TColors.primary,
        ),
        child: const Icon(
          Icons.arrow_right,
          color: TColors.white,
        ),
      ),
    );
  }
}
