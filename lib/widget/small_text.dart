import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class SmallText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  double height;

  SmallText({
    required this.text,
    this.color = const Color(0xff787A91),
    this.size = 0,
    this.height = 1.5,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size == 0 ? Dimension.font12 : size,
      ),
    );
  }
}
