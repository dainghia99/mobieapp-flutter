import 'package:bai_tap_lon/common/widgets/layouts/grid_layout.dart';
import 'package:bai_tap_lon/common/widgets/products/product_card_vertical.dart';
import 'package:bai_tap_lon/containers/home_container.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Stack(
              children: [
                TCircularContainer(
                  width: 120,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Tìm kiếm',
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Handle search button click
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          TGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const Center(),
          )
        ],
      ),
    );
  }
}
