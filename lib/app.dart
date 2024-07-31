import 'package:bai_tap_lon/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:bai_tap_lon/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.dartTheme,
      home: const OnBoardingScreen(),
    );
  }
}
