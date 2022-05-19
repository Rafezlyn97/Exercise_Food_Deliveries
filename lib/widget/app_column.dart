import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/color.dart';
import 'package:flutter_application_1/constant/dimension.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/icon_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimension.font20,
        ),
        SizedBox(
          height: Dimension.height10,
        ),
        SmallText(text: "With Peanut Sauce"),
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
    );
  }
}
