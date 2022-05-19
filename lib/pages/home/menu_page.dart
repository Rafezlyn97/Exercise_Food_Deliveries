import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/pages/home/menu_body_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("current height is" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                top: Dimension.height45,
                bottom: Dimension.height15,
              ),
              padding: EdgeInsets.only(
                left: Dimension.width20,
                right: Dimension.width20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Country"),
                      Row(
                        children: [
                          SmallText(text: "State"),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black54,
                          ),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimension.width45,
                      height: Dimension.height45,
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: MenuBodyPage(),
            ),
          ),
        ],
      ),
    );
  }
}
