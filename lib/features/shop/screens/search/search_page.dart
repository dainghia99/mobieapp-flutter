import 'package:bai_tap_lon/common/widgets/layouts/grid_layout.dart';
import 'package:bai_tap_lon/common/widgets/products/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bai_tap_lon/features/shop/screens/search/controllers/search_controller.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchControllerPage searchController =
        Get.put(SearchControllerPage());

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Tìm kiếm...',
                border: OutlineInputBorder(),
              ),
              onChanged: (query) {
                searchController.searchProducts(query);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(() {
              if (searchController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }

              if (searchController.searchResults.isEmpty) {
                return const Center(child: Text('Không có kết quả nào'));
              }

              return TGridLayout(
                itemCount: searchController.searchResults.length,
                itemBuilder: (context, index) {
                  var product = searchController.searchResults[index];
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
