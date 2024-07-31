import 'package:bai_tap_lon/features/authentication/controllers/onboarding.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:bai_tap_lon/utils/devices/device_untility.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunction.isDartMode(context);

    return Positioned(
      bottom: TDeviceUntility.getButtonNavigationHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: controller.dotNavigatorClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dart,
          dotHeight: 6,
        ),
        controller: controller.pageController,
        count: 3,
      ),
    );
  }
}
