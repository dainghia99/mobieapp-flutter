import 'package:bai_tap_lon/common/spacing_styles.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDartMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWidthAppBarHeight,
            child: Column(
              children: [
                // Logo
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage(
                          dark ? TImages.dartAppLogo : TImages.dartAppLogo),
                      height: 150,
                    ),
                    Text(
                      "Đăng nhập",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    Text(
                      "Đăng nhập nhanh chóng và tiện lợi",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),

                // Form login

                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: TSizes.spaceBtwSections),
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
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: TSizes.spaceBtwSections,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Đăng nhập"),
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Đăng ký"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 0.5,
                        indent: 60,
                        endIndent: 5,
                      ),
                    ),
                    Text(
                      "Hoặc đăng nhập bằng",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Flexible(
                      child: Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 0.5,
                        indent: 5,
                        endIndent: 60,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                // Footer

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(TImages.facebookAppLogo),
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(TImages.googleAppLogo),
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
