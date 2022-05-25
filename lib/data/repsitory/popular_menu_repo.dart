import 'package:flutter_application_1/data/api_client.dart';
import 'package:get/get.dart';

class PopularMenuRepo extends GetxService {
  final ApiClient apiClient;

  PopularMenuRepo({required this.apiClient});

  Future<Response> getPopularMenuList() async {
    return await apiClient
        .getData("https://628de0bb368687f3e70b131e.mockapi.io/products");
  }
}
