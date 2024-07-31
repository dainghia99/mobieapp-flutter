import 'package:bai_tap_lon/features/authentication/controllers/onboarding.dart';
import 'package:bai_tap_lon/features/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:bai_tap_lon/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:bai_tap_lon/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:bai_tap_lon/utils/constants/text_strings.dart';
import 'package:bai_tap_lon/utils/devices/device_untility.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.dartAppLogo,
                title: TTextString.onBoardingTitle1,
                subtitle: TTextString.onBoardingSubtitle1,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : Colors.black,
          ),
          child: const Icon(
            Icons.arrow_right,
            color: TColors.primary,
          ),
        ));
  }
}
