import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otogootestapp/Screens/newsScreen.dart';
import 'package:otogootestapp/route/app_router.dart';

class searchResult extends StatelessWidget {
  searchResult({Key? key, this.content, this.imageUrl, this.title}) : super(key: key);

  var imageUrl, title, content;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            side: MaterialStateProperty.all(const BorderSide(color: Colors.black12)),
            backgroundColor: MaterialStateProperty.all(Colors.grey.shade900.withOpacity(1))
        ),
        onPressed: () {
          AutoRouter.of(context);
          context.router;
          context.router.push(NewsRoute(
            caption: title,
            imageUrl: imageUrl,
            content: content,
          ));
        },
        child: ListTile(
          leading: imageUrl != null ? Image.network(imageUrl, fit: BoxFit.fill,) : const CircularProgressIndicator(color: Colors.white38),
          title: Text(title, style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),),
        )
    );
  }
}
