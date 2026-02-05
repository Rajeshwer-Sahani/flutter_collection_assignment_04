
import 'package:flutter/material.dart';
import 'package:assignment_04/widgets/collection_card.dart';
import 'package:assignment_04/models/collection_model.dart';



class CollectionsScreen extends StatefulWidget {
  const CollectionsScreen({super.key});

  @override
  State<CollectionsScreen> createState() => _CollectionsScreenState();
}

class _CollectionsScreenState extends State<CollectionsScreen> {
  int expandedIndex = -1;

  
  final List<CollectionModel> collections = [
    CollectionModel(
      title: "Collection 1",
      images: [
        "assets/images/image1.png",
        "assets/images/image2.png",
        "assets/images/image3.png",
        "assets/images/image4.png",
      ],
    ),
    CollectionModel(
      title: "Collection 2",
      images: [
         "assets/images/image5.png",
         "assets/images/image6.png",
         "assets/images/image3.png",
           
      ],
    ),
    CollectionModel(
      title: "Collection 3",
      images: [
         "assets/images/image6.png",
         "assets/images/image2.png",
         "assets/images/image3.png",
         "assets/images/image1.png",
             "assets/images/image4.png",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Collections"),
      ),
      body: ListView.builder(
        itemCount: collections.length,
        itemBuilder: (context, index) {
          return CollectionCard(
            title: collections[index].title,
            images: collections[index].images,
            isExpanded: expandedIndex == index,
            onTap: () {
              setState(() {
                if (expandedIndex == index) {
                  expandedIndex = -1; // close
                } else {
                  expandedIndex = index; // open
                }
              });
            },
          );
        },
      ),
    );
  }
}
