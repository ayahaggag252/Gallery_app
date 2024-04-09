import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:promina_agency/Models/galleryModel.dart';

import '../../api/api clients.dart';

class galleryController extends GetxController {
  ApiClient apiClient = ApiClient();

  List<galleryModel> trendingMovies = <galleryModel>[].obs;


  @override
  void onInit() {
  getTrending();
  super.onInit();
}
  void getTrending() async {
  var results = await apiClient.getTrendingMovies();
  if (results.isNotEmpty) {
  trendingMovies = results;
  }
  update();
}
}