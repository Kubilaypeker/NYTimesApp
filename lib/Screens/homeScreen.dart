import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:otogootestapp/Widgets/newsPreviewWidget.dart';
import '../Widgets/searchResultWidget.dart';

@RoutePage()
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var jsonList;
  final dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHttp();
  }

  getHttp() async {
    try {
      var response = await dio.get('https://api.nytimes.com/svc/news/v3/content/nyt/technology.json?api-key=DesxIrwdSrHhaVkvBz6hbWncqxEbmprq');
      if(response.statusCode == 200){
        setState(() {
          jsonList = response.data['results'] as List;
        });
      }
      else{
        print(response.statusCode);
      }
    }catch(e){
      print(e);
    }
  }



  String modelNameText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("NY Times",
        style: GoogleFonts.montserrat(
          color: Colors.black
        ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: jsonList == null?0:jsonList.length,
              itemBuilder: (BuildContext context, int index) {
            return newsPreview(
              caption: jsonList[index]['title'],
              imageUrl: jsonList[index]['multimedia'][2]['url'],
              content: jsonList[index]['abstract'],
            );
          }
          ),
          Column(
              children: [
                CupertinoSearchTextField(
                  onChanged: (searchText) {
                    setState  (() {
                      modelNameText = searchText;
                    });
                  },
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(color: Colors.black)
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.black,),
                  placeholder: "Search for your interest",
                  placeholderStyle: GoogleFonts.inter(color: Colors.black),
                ),
                Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      shrinkWrap: true,
                        itemCount: jsonList == null?0:jsonList.length,
                        itemBuilder: (BuildContext context, int index) {
                          if(modelNameText.isEmpty){
                          return const SizedBox(height: 0,);
                          }
                          else if(jsonList[index]['title'].toString().toLowerCase().contains(modelNameText)){
                            return searchResult(
                              title: jsonList[index]['title'],
                              imageUrl: jsonList[index]['multimedia'][2]['url'],
                              content: jsonList[index]['abstract'],
                            );
                          }
                          else if(modelNameText.isEmpty){
                            return const SizedBox(height: 0,);
                          }
                          else {
                            return const SizedBox(height: 0,);
                          }
                        }
                    ),
                ),
              ]
          ),
        ],
      )
    );
  }
}
