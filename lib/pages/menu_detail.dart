import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/app_column.dart';
import 'package:flutter_application_1/widget/app_icon.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/expandable_text.dart';
import 'package:flutter_application_1/widget/icon_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class MenuDetail extends StatefulWidget {
  const MenuDetail({Key? key}) : super(key: key);

  @override
  State<MenuDetail> createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
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
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.pageView350 - 40,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                right: Dimension.width20,
                top: Dimension.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimension.radius30),
                  topLeft: Radius.circular(Dimension.radius30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Italian Dish",
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  BigText(
                    text: "Introduce",
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: Dimension.height20,
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.pageView120,
        padding: EdgeInsets.only(
          top: Dimension.height30,
          bottom: Dimension.height30,
          left: Dimension.height20,
          right: Dimension.height20,
        ),
        decoration: BoxDecoration(
          color: AppColor.bgColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimension.radius30),
            topLeft: Radius.circular(Dimension.radius30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: Dimension.width10, right: Dimension.width10),
              height: Dimension.height45,
              width: Dimension.width120 - 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColor.mainColor,
                    size: Dimension.icon20,
                  ),
                  BigText(
                    text: "1",
                    size: Dimension.font16,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColor.mainColor,
                    size: Dimension.icon20,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Dimension.width10,
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimension.width10,
                right: Dimension.width10,
              ),
              height: Dimension.pageView100,
              width: Dimension.width230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius15),
                color: AppColor.button1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(
                    text: "\$10 | Add to Cart",
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
