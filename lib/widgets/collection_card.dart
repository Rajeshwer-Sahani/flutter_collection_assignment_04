import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  final String title;
  final List<String> images;
  final bool isExpanded;
  final VoidCallback onTap;

  const CollectionCard({
    super.key,
    required this.title,
    required this.images,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    int visibleCount = 3;
    List<String> visibleImages = images.take(visibleCount).toList();
    int remainingImages = images.length - visibleImages.length;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          
          InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: List.generate(visibleImages.length, (index) {
                return Expanded(
                  child: Stack(
                    children: [
                      Image.asset(
                        visibleImages[index],
                        height: 80,
                        fit: BoxFit.cover,
                      ),

                      // +N overlay 
                      if (index == visibleImages.length - 1 &&
                          remainingImages > 0)
                        Container(
                          height: 80,
                          color: Colors.black.withOpacity(0.5),
                          alignment: Alignment.center,
                          child: Text(
                            "+$remainingImages",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              }),
            ),
          ),

          
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: images.map((img) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Image.asset(
                      img,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
