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
            "https://images2.minutemediacdn.com/image/upload/c_fill,w_1440,ar_16:9,f_auto,q_auto,g_auto/shape/cover/sport/643188-gettyimages-153946385-ca1ccfaad9be44325afc434b305adc0d.jpg",
        author: map['author'] ?? "Anomous");
  }
}
