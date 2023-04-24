//The model tells what are the fields to be extracted from json
class News_model {
  late String title;
  late String urlToImage;
  late String author;
  News_model(
      {required this.title, required this.urlToImage, required this.author});
  static News_model fromJSON(dynamic map) {
    return News_model(
        title: map['title'],
        urlToImage: map['urlToImage'] ??
            "https://images.app.goo.gl/J7HJ1pJHLJSJY8QG6",
        author: map['author'] ?? "Anomous");
  }
}
