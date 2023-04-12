/*import 'package:flutter/material.dart';

class searchMotherBoardStreamBuilder extends StatefulWidget {
  searchMotherBoardStreamBuilder({Key? key, required this.modelName, required this.category}) : super(key: key);

  var modelName;
  var category;

  @override
  State<searchMotherBoardStreamBuilder> createState() => _searchStreamBuilderState();
}

class _searchStreamBuilderState extends State<searchMotherBoardStreamBuilder> {


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot> (
      stream: FirebaseFirestore.instance.collection(widget.category).snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> querySnapshot) {
        return (querySnapshot.connectionState == ConnectionState.waiting)
            ? const SizedBox(
            height: 0
        )
            : ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: querySnapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var data = querySnapshot.data!.docs[index].data() as Map<String, dynamic>;
              final DocumentSnapshot documentSnapshot = querySnapshot.data!.docs[index];

              if(widget.modelName.isEmpty) {
                return const SizedBox(height: 0);
              }
              if(data['Model'].toString().toLowerCase().contains(widget.modelName)) {
                return searchMotherBoardWidget(
                  model: documentSnapshot["Model"],
                  image: documentSnapshot["image"],
                  kod: documentSnapshot["Kod"],
                  fiyat: documentSnapshot["Fiyat"],
                  marka: documentSnapshot["Marka"],
                );
              }
              else {
                return SizedBox(height: 0,);
              }
            }
        );
      },
    );
  }
}
*/