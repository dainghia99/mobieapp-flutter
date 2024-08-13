import 'package:bai_tap_lon/appbar.dart';
import 'package:bai_tap_lon/common/widgets/layouts/grid_layout.dart';
import 'package:bai_tap_lon/common/widgets/products/product_card_vertical.dart';
import 'package:bai_tap_lon/containers/home_container.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(0),
              child: const Stack(
                children: [
                  TCircularContainer(),
                  MainAppBar(),
                ],
              ),
            ),
            TGridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const TProductCardVertical(),
            )
          ],
        ),
      ),
    );
  }
}
