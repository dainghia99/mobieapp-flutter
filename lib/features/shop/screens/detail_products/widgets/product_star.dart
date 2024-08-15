import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProruductStar extends StatelessWidget {
  const ProruductStar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "5",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "(123)",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Icon(CupertinoIcons.share_up)
        ],
      ),
    );
  }
}
