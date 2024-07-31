import 'package:bai_tap_lon/features/authentication/controllers/onboarding.dart';
import 'package:bai_tap_lon/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:bai_tap_lon/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:bai_tap_lon/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:bai_tap_lon/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:bai_tap_lon/utils/constants/text_strings.dart';
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
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
