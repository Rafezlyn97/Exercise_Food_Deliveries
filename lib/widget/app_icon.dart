import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/dimension.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color background;
  final double size;

  AppIcon({
    required this.icon,
    this.iconColor = const Color(0xff943a28),
    this.background = const Color(0xfffcf4e4),
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: background,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimension.icon16,
      ),
    );
  }
}
