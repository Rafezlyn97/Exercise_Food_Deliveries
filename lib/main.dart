import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/menu_page.dart';
import 'package:flutter_application_1/pages/menu_detail.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffFFF9F9),
        ),
        home: const MenuDetail());
  }
}
