import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/News_model.dart';
import '../widgets/Newsbox.dart';
import '../Services/News_Services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  News_services service =
      News_services(); //create a instance to run services and dio model

  List<News_model> news_models = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<List<News_model>> future = service.getNews();
    future.then((List<News_model> news_models) {
      this.news_models = news_models;
      setState(() {
        //it will call the build and all the things will be printed by build
      });
    }).catchError((err) => print("error is $err"));
    //  future.then().catchError();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
        actions: [Icon(Icons.search), Icon(Icons.notifications_outlined)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text("SPORTS")),
                    TextButton(onPressed: () {}, child: Text("MOVIES")),
                    TextButton(onPressed: () {}, child: Text("CRIME")),
                    TextButton(onPressed: () {}, child: Text("CITY ")),
                    TextButton(onPressed: () {}, child: Text("SPECIAl")),
                    TextButton(onPressed: () {}, child: Text("FOR-YOU")),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
            TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  //labelText: "click here to search",
                  hintText: "Search your favourit news", //hover text is used
                  //prefix: Icon(Icons.search),
                  //color: Colors.amber,
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
            Wrap(
                children: news_models
                    .map((singleArticle) => Newsbox(
                        title: singleArticle.title,
                        urlToImage: singleArticle.urlToImage,
                        author: singleArticle.author))
                    .toList()),
            //Newsbox(title: news_models.length.toString(), urlToImage: "abc.png")
          ],
        ),
      ),
    );
  }
}
