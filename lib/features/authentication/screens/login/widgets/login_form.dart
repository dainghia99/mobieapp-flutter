import 'package:bai_tap_lon/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:bai_tap_lon/features/authentication/screens/signup/signup.dart';
import 'package:bai_tap_lon/navigation_menu.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            // Password
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: "Mật khẩu",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),
            // Rememberme and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Rememberme
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      "Nhớ mật khẩu",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                // Forgot password
                TextButton(
                  child: const Text("Quên mật khẩu?"),
                  onPressed: () => Get.to(() => const ForgetPassword()),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text("Đăng nhập"),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text("Đăng ký"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
