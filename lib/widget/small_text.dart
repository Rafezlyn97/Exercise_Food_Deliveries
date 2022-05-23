import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class SmallText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  double height;
  TextOverflow overFlow;

  SmallText(
      {required this.text,
      this.color = const Color(0xff787A91),
      this.size = 0,
      this.height = 1.5,
      this.overFlow = TextOverflow.visible});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      //maxLines: 4,
      style: TextStyle(
        overflow: overFlow,
        height: height,
        color: color,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size == 0 ? Dimension.font15 : size,
      ),
    );
  }
}
