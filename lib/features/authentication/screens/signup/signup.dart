import 'package:bai_tap_lon/common/widgets/divider_login.dart';
import 'package:bai_tap_lon/common/widgets/footer_login.dart';
import 'package:bai_tap_lon/features/authentication/screens/signup/widgets/form_signup.dart';
import 'package:bai_tap_lon/features/authentication/screens/signup/widgets/image_signup.dart';
import 'package:bai_tap_lon/features/authentication/screens/signup/widgets/signup_button.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDartMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              const ImageSignUp(),

              const SizedBox(height: 30),
              // Title
              Text(
                "Đăng ký",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 30),
              // Form
              const TFormSignUp(),
              const SizedBox(height: 10),
              // SignUp button
              const SignUpButton(),
              const SizedBox(
                height: 10,
              ),
              TDivider(dark: dark),
              const SizedBox(
                height: 10,
              ),
              const TFooter()
            ],
          ),
        ),
      ),
    );
  }
}
