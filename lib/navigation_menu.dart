import 'package:bai_tap_lon/features/account/screens/settings/setting.dart';
import 'package:bai_tap_lon/features/shop/screens/favourite/favourite.dart';
import 'package:bai_tap_lon/features/shop/screens/home/home.dart';
import 'package:bai_tap_lon/features/shop/screens/search/search_page.dart';
import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:bai_tap_lon/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationMenuController());
    final darkMode = THelperFunction.isDartMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: darkMode ? TColors.black : TColors.white,
          indicatorColor: darkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(CupertinoIcons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: "Tìm kiếm",
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.heart),
              label: "Yêu thích",
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.profile_circled),
              label: "Tài khoản",
            ),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationMenuController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    const SearchPage(),
    const FavouriteScreen(),
    const SettingScreen(),
  ];
}
