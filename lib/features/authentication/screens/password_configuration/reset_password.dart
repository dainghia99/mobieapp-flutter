import 'package:bai_tap_lon/features/authentication/screens/login/login.dart';
import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.clear),
            onPressed: () => Get.back(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(TImages.resetPassword),
                width: THelperFunction.screenWidth(),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Title and subtitle
              Text(
                "Mật Khẩu Đã Được Gửi Đến Email Của Bạn",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              Text(
                "Bạn vui lòng kiểm tra hòm thư để nhận lại mật khẩu. Bạn vui lòng không cung cấp mật khẩu của mình cho bất kỳ ai để đảm báo an toàn.",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text('Xong'),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text('Gửi lại Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
