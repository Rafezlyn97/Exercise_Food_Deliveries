import 'package:flutter_application_1/data/repsitory/popular_menu_repo.dart';
import 'package:get/get.dart';

class PopularMenuController extends GetxController {
  final PopularMenuRepo popularMenuRepo;
  PopularMenuController({required this.popularMenuRepo});

  List<dynamic> _popularMenuList = [];
  List<dynamic> get popularMenuList => _popularMenuList;

  Future<void> getPopularMenuList() async {
    Response response = await popularMenuRepo.getPopularMenuList();
    if (response.statusCode == 200) {
      _popularMenuList = [];
      //_popularMenuList.addAll();
      update();
    } else {}
  }
}
