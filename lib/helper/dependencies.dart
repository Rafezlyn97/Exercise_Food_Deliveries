import 'package:flutter_application_1/controller/popular_menu_controller.dart';
import 'package:flutter_application_1/data/api_client.dart';
import 'package:flutter_application_1/data/repsitory/popular_menu_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api_client
  Get.lazyPut(() =>
      ApiClient(appBaseUrl: "https://628de0bb368687f3e70b131e.mockapi.io/"));

  //repository
  Get.lazyPut(() => PopularMenuRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => PopularMenuController(popularMenuRepo: Get.find()));
}
