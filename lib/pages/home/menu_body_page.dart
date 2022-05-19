import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/app_column.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/icon_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';

class MenuBodyPage extends StatefulWidget {
  const MenuBodyPage({Key? key}) : super(key: key);

  @override
  State<MenuBodyPage> createState() => _MenuBodyPageState();
}

class _MenuBodyPageState extends State<MenuBodyPage> {
  PageController _pageController = PageController(viewportFraction: 0.85);
  var currentPageVal = 0.0;
  double scaleFactor = 0.8;
  double height = Dimension.pageViewContainer;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPageVal = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider
        Container(
          height: Dimension.pageView,
          child: PageView.builder(
              controller: _pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        SizedBox(
          height: Dimension.height30,
        ),
        //dots indicator
        DotsIndicator(
          dotsCount: 5,
          position: currentPageVal,
          decorator: DotsDecorator(
            activeColor: AppColor.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimension.radius5)),
          ),
        ),
        //popular section
        SizedBox(
          height: Dimension.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimension.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(
                text: "Popular",
                color: Colors.black,
              ),
              SizedBox(
                width: Dimension.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimension.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(
                  text: "Food Pairing",
                ),
              ),
            ],
          ),
        ),
        //list of images and info
        ListView.builder(
          padding: EdgeInsets.only(top: Dimension.height15),
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                top: Dimension.height10,
                left: Dimension.width20,
                right: Dimension.width20,
                bottom: Dimension.height10,
              ),
              child: Row(
                children: [
                  Container(
                    height: Dimension.pageView120,
                    width: Dimension.width120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius15),
                      color: AppColor.button1,
                      image: const DecorationImage(
                        image: AssetImage("image/2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: Dimension.pageView100,
                      width: Dimension.width230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimension.radius15),
                          bottomRight: Radius.circular(Dimension.radius15),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: Dimension.width10,
                          right: Dimension.width10,
                          top: Dimension.height10,
                        ),
                        child: AppColumn(
                          text: "Italian Dish",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == currentPageVal.floor()) {
      var currentScale = 1 - (currentPageVal - index) * (1 - scaleFactor);
      var currentTrans = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == currentPageVal.floor() + 1) {
      var currentScale =
          scaleFactor + (currentPageVal - index + 1) * (1 - scaleFactor);
      var currentTrans = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == currentPageVal.floor() - 1) {
      var currentScale = 1 - (currentPageVal - index) * (1 - scaleFactor);
      var currentTrans = height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          //Ui slider
          Container(
            height: Dimension.pageViewContainer,
            margin: EdgeInsets.only(
              left: Dimension.width5,
              right: Dimension.width5,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius30),
                color: index.isEven ? AppColor.button1 : AppColor.button2,
                image: const DecorationImage(
                  image: AssetImage("image/1.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          //slider info
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.pageViewTextContainer,
              margin: EdgeInsets.only(
                left: Dimension.width30,
                right: Dimension.width30,
                bottom: Dimension.height10,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius30),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    ),
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                  top: Dimension.height15,
                  left: Dimension.width15,
                  right: Dimension.width15,
                  //bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Italian Dish",
                    ),
                    SizedBox(
                      height: Dimension.height10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: AppColor.button2,
                              size: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Dimension.width10,
                        ),
                        SmallText(text: "5.0"),
                        SizedBox(
                          width: Dimension.width10,
                        ),
                        SmallText(text: "1289"),
                        SizedBox(
                          width: Dimension.width5,
                        ),
                        SmallText(text: "comments"),
                      ],
                    ),
                    SizedBox(
                      height: Dimension.height15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconText(
                          icon: Icons.circle,
                          iconColor: AppColor.button2,
                          text: "Normal",
                        ),
                        IconText(
                          icon: Icons.location_on,
                          iconColor: AppColor.button1,
                          text: "1.2km",
                        ),
                        IconText(
                          icon: Icons.access_time_rounded,
                          iconColor: AppColor.mainColor,
                          text: "28min",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
