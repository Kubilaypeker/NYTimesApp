import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:otogootestapp/Screens/newsScreen.dart';
import 'package:otogootestapp/route/app_router.dart';

class newsPreview extends StatelessWidget {
  newsPreview({Key? key, this.caption, this.imageUrl, this.content}) : super(key: key);

  var imageUrl, caption, content;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        AutoRouter.of(context);
        context.router;
        context.router.push(NewsRoute(
          caption: caption,
          imageUrl: imageUrl,
          content: content,
        ));
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height/4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: imageUrl != null ? Image.network(imageUrl, fit: BoxFit.fill,) : Center(
                  child:Text(
                "Image is not found",
                    style: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
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
      ),
    );
  }
}
