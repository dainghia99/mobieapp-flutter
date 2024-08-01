import 'package:bai_tap_lon/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TFormSignUp extends StatelessWidget {
  const TFormSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Tên tài khoản",
                  prefixIcon: Icon(
                    Icons.supervised_user_circle_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: "Mật khẩu",
                  prefixIcon: Icon(Icons.key),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: "Nhập lại mật khẩu",
                  prefixIcon: Icon(Icons.key),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Tôi đồng ý với',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: 'Điều khoản và chính sách',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
