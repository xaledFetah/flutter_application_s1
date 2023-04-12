import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_s1/class_card_tile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Test_TabbarvieW extends StatelessWidget {
  final List cardContent = [
    // [imageName , productName , price]
    ['assets/images/6.svg', 'Sandalya Yeni 1', '\$250'],
    ['assets/images/2.svg', 'Sandalya Yeni 2', '\$266'],
    ['assets/images/3.svg', 'Sandalya Yeni 3', '\$223'],
    ['assets/images/4.svg', 'Sandalya Yeni 4', '\$299'],
    ['assets/images/5.svg', 'Sandalya Yeni 5', '\$270'],
    ['assets/images/6.svg', 'Sandalya Yeni 1', '\$250'],
    ['assets/images/2.svg', 'Sandalya Yeni 2', '\$266'],
    ['assets/images/3.svg', 'Sandalya Yeni 3', '\$223'],
    ['assets/images/4.svg', 'Sandalya Yeni 4', '\$299'],
    ['assets/images/5.svg', 'Sandalya Yeni 5', '\$270'],
  ];
  Test_TabbarvieW({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // card container
        Scaffold(
            body: Container(
      child: Center(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.6),
            itemCount: cardContent.length,
            itemBuilder: (context, index) {
              return CardTile(
                  imageName: cardContent[index][0],
                  productTitle: cardContent[index][1],
                  price: cardContent[index][2]);
            }),
      ),
    ));
  }
}

// Container(
//
//   );

