import 'package:bai_tap_lon/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Get.to(const VerifyEmailScreen()),
        child: Text(
          "Đăng ký",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
