import 'package:bai_tap_lon/features/account/controllers/theme_controller.dart';
import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Tài Khoản",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            // Container(
            //   width: 50,
            //   height: 50,
            //   decoration: const BoxDecoration(
            //     borderRadius: BorderRadius.all(
            //       Radius.elliptical(50, 50),
            //     ),
            //     image: DecorationImage(
            //       image: AssetImage(TImages.user),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            //   child: const Image(
            //     image: AssetImage(TImages.user),
            //     width: 50,
            //     height: 50,
            //   ),
            // ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: ClipOval(
                      child: Image(
                        image: AssetImage(TImages.user),
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Đại Nghĩa",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "admin@gmail.com",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Chế Độ Tối Màu',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              trailing: Obx(
                () => Switch(
                  value: themeController.isDarkMode.value,
                  onChanged: (value) {
                    themeController.toggleTheme();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
