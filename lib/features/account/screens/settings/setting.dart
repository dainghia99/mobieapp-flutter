import 'package:bai_tap_lon/features/account/controllers/theme_controller.dart';
import 'package:bai_tap_lon/features/authentication/screens/login/login.dart';
import 'package:bai_tap_lon/utils/constants/image_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final User? user = FirebaseAuth.instance.currentUser;

    Future<void> signOut() async {
      await FirebaseAuth.instance.signOut();
      // Chuyển người dùng về màn hình đăng nhập sau khi đăng xuất
      Get.offAll(() =>
          const LoginScreen()); // Thay thế bằng màn hình đăng nhập của bạn
    }

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
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: ClipOval(
                        child: user?.photoURL != null
                            ? Image.network(
                                user!.photoURL!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                TImages.user,
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
                          user?.displayName ??
                              "Không có tên", // Hiển thị tên người dùng
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          user?.email ??
                              "Không có email", // Hiển thị email người dùng
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: signOut, // Gọi hàm đăng xuất khi nhấn nút
              child: const Text('Đăng xuất'),
            ),
          ],
        ),
      ),
    );
  }
}
