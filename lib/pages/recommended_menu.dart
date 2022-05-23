import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/app_icon.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/expandable_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class RecommendedMenu extends StatelessWidget {
  const RecommendedMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 90,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(8),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimension.radius30),
                      topLeft: Radius.circular(Dimension.radius30),
                    )),
                width: double.maxFinite,
                child: Center(
                  child: BigText(
                    text: "Italian Dish",
                    size: Dimension.font26,
                  ),
                ),
                padding: const EdgeInsets.only(top: 5, bottom: 10),
              ),
            ),
            pinned: true,
            backgroundColor: AppColor.button2,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "image/1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimension.width10, right: Dimension.width10),
                  child: const ExpandableText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.  Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?  Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? ",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.width20 * 2.5,
              right: Dimension.width20 * 2.5,
              top: Dimension.height10 * 1.0,
              bottom: Dimension.height20 * 1.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  background: AppColor.button1,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\$10.00 " + "X" + " 1",
                  color: AppColor.mainTextColor,
                ),
                AppIcon(
                  icon: Icons.add,
                  background: AppColor.button1,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            height: Dimension.pageView120,
            padding: EdgeInsets.only(
              top: Dimension.height30,
              bottom: Dimension.height30,
              left: Dimension.height30,
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
                    height: Dimension.height50,
                    width: Dimension.width50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius15),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: AppColor.mainColor,
                    )),
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
        ],
      ),
    );
  }
}
