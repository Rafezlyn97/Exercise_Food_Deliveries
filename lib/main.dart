import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/popular_menu_controller.dart';
import 'package:flutter_application_1/pages/home/menu_page.dart';
import 'package:flutter_application_1/pages/menu_detail.dart';
import 'package:flutter_application_1/pages/recommended_menu.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularMenuController>().getPopularMenuList();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const RecommendedMenu(),
    );
  }
}
