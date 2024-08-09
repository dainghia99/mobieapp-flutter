import 'package:bai_tap_lon/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    this.title = "Chào Mừng Bạn Đến Với Thế Giới CockTail",
    this.description =
        "Cocktail là sự kết hợp tinh tế của hương vị và sáng tạo, mang đến trải nghiệm độc đáo và sảng khoái. Từ những hương vị cổ điển đến sáng tạo mới mẻ, cocktail luôn là lựa chọn hoàn hảo để tận hưởng và thư giãn trong không gian sang trọng và tinh tế.",
  });

  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(400),
          color: TColors.textWhite.withOpacity(0.1)),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Text(
                "WELCOME",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .apply(color: TColors.grey),
              ),
              const SizedBox(
                width: 190,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.shopping_cart,
                  color: TColors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title!,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .apply(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description!,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
