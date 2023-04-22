import 'package:dio/dio.dart';

// const String url =
//     "https://newsapi.org/v2/top-headlines?country=us&apiKey=3ec88e123d904f73b4d3769e2f2ab7e6";

class ApiClient {
  Dio dio = Dio();
  Future<Response> get(url) {
    print("dio kaam kar raha hai");
    return dio.get(url);
  }

  post(url, data) {}
}
