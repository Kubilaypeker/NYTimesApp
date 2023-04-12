import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class newsScreen extends StatelessWidget {
  newsScreen({Key? key, this.imageUrl, this.caption, this.content}) : super(key: key);
  var imageUrl, caption, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text("NY Times",
        style: GoogleFonts.montserrat(
            color: Colors.black
        ),
      ),
    ),
      body: ListView(
    children: [
      Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.network(imageUrl,fit: BoxFit.fitWidth,),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent, Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0, 0, 0.9]
              ),
            ),
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: Text(caption,
              style: GoogleFonts.montserrat(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),),
          ),
        ],
      ),
      Padding(
          padding: const EdgeInsets.all(5),
          child: Text(content,
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          ),
      ),
     ]
      )
    );
  }
}
