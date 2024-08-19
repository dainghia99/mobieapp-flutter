import 'package:bai_tap_lon/appbar.dart';
import 'package:bai_tap_lon/common/widgets/layouts/grid_layout.dart';
import 'package:bai_tap_lon/common/widgets/products/product_card_vertical.dart';
import 'package:bai_tap_lon/containers/home_container.dart';
import 'package:bai_tap_lon/features/shop/screens/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(0),
            child: const Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TCircularContainer(),
                ),
                MainAppBar(),
              ],
            ),
          ),
          Obx(() {
            if (productController.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return TGridLayout(
                itemCount: productController.productList.length,
                itemBuilder: (context, index) {
                  var product = productController.productList[index];
                  return TProductCardVertical(product: product);
                },
              );
            }
          }),
        ],
      ),
    );
  }
}
