import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 4.0, bottom: 6),
      child: Text(
        "Tên của sản phẩm",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
