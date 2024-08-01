import 'package:bai_tap_lon/common/spacing_styles.dart';
import 'package:bai_tap_lon/common/widgets/divider_login.dart';
import 'package:bai_tap_lon/common/widgets/footer_login.dart';
import 'package:bai_tap_lon/features/authentication/screens/login/widgets/login_form.dart';
import 'package:bai_tap_lon/features/authentication/screens/login/widgets/login_header.dart';
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
                TLoginHeader(dark: dark),

                // Form login

                const TLoginForm(),

                // Divider
                TDivider(dark: dark),

                const SizedBox(
                  height: 20,
                ),

                // Footer

                const TFooter()
              ],
            )),
      ),
    );
  }
}
