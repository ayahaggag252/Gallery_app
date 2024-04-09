
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:promina_agency/Models/galleryModel.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


import 'apiconstants.dart';

class ApiClient extends GetxController {
  Future<List<galleryModel>> getTrendingMovies() async {
    String uri =
        '${ApiConstants.baseUrl}trending/movie/week?${ApiConstants.apiKEY}';

    try {
      http.Response response = await http.get(Uri.parse(uri));
      final data = json.decode(response.body);
      var result = data['results'];

      List<galleryModel> results = [];
      for (var movie in result) {
        results.add(galleryModel.fromJson(movie));
      }

      return results;
    } catch (e) {
      rethrow;
    }
  }
}