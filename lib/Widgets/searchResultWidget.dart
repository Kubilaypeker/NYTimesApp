import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otogootestapp/Screens/newsScreen.dart';

class searchResult extends StatelessWidget {
  searchResult({Key? key, this.content, this.imageUrl, this.title}) : super(key: key);

  var imageUrl, title, content;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            side: MaterialStateProperty.all(BorderSide(color: Colors.black12)),
            backgroundColor: MaterialStateProperty.all(Colors.grey.shade900.withOpacity(1))
        ),
        onPressed: () {
          Get.to(newsScreen(
            imageUrl: imageUrl,
            caption: title,
            content: content,
          ));
        },
        child: ListTile(
          leading: Image.network(imageUrl, fit: BoxFit.cover,),
          title: Text(title, style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),),
        )
    );
  }
}
