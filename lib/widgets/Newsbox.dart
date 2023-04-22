import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../Services/News_Services.dart';
import 'package:google_fonts/google_fonts.dart';

class Newsbox extends StatelessWidget {
  late String title;
  late String urlToImage;
  late String author;
  // late String author;
  Newsbox(
      {required this.title, required this.urlToImage, required this.author});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            // height: 200,
            // width: 200,
            child: Image.network(urlToImage),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
          ),
          Text(
            title,
            style: GoogleFonts.poppins(),
          ),
          Divider(),
          Icon(Icons.account_circle_outlined),
          Container(
            child: Text("BY:$author"),
          ), //Container(child: CircularProgressIndicator(),)
        ],
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: 30),
    );
  }
}
