import 'package:dio/dio.dart';
import 'package:flutter_application_3/Infra/service/ApiClient.dart';
import 'package:flutter_application_3/models/News_model.dart';

class News_services {
  ApiClient apiClient = ApiClient();
  Future<List<News_model>> getNews() async {
    Response response = await apiClient.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=3ec88e123d904f73b4d3769e2f2ab7e6');
    print(response.data);
    print(response.statusCode);
    print(response.data.runtimeType);
    // print("pata he nahe chal raha ke kaam kar bhe raha hai ya nahe");
    List<dynamic> list = response.data['articles'];
    List<News_model> News_models =
        list.map((m) => News_model.fromJSON(m)).toList();
    print("the News_models are $News_models");
    // print(list.runtimeType);

    // return [];
    return News_models;
  }
}
