import 'package:bai_tap_lon/common/widgets/layouts/grid_layout.dart';
import 'package:bai_tap_lon/common/widgets/products/product_card_vertical.dart';
import 'package:bai_tap_lon/features/shop/screens/favourite/controllers/favourite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FavoritesController favoritesController =
        Get.put(FavoritesController());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 80),
            const Text(
              'Sản Phẩm Yêu Thích',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Obx(() {
              if (favoritesController.favoriteProducts.isEmpty) {
                return const Center(child: Text('Không có sản phẩm yêu thích'));
              }
              return TGridLayout(
                itemCount: favoritesController.favoriteProducts.length,
                itemBuilder: (context, index) {
                  var product = favoritesController.favoriteProducts[index];
                  return TProductCardVertical(product: product);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
