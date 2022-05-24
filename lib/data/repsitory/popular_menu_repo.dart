import 'package:flutter_application_1/data/api_client.dart';
import 'package:get/get.dart';

class PopularMenuRepo extends GetxService {
  final ApiClient apiClient;

  PopularMenuRepo({required this.apiClient});

  Future<Response> getPopularMenuList() async {
    return await apiClient.getData("https://www.dbestech.com/api/product/list");
  }
}
