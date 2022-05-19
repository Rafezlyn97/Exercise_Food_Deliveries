import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/app_icon.dart';

class MenuDetail extends StatelessWidget {
  const MenuDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: double.maxFinite,
              height: Dimension.pageView350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimension.height45,
            left: Dimension.width15,
            right: Dimension.width15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: 200,
              width: double.maxFinite,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
