import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class BigText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText(
      {required this.text,
      this.color = const Color(0xff943a28),
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimension.font18 : size,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
