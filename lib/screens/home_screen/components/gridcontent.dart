import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/product_detail_screen/product_detail_screen.dart';

class Gridcontent extends StatelessWidget {
  final AssetImage images;
  final String textt;
  final double price;
  const Gridcontent(
      {super.key,
      required this.images,
      required this.textt,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetailScreen(
                    name: textt,
                    image: images,
                    price: price,
                  ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
            
              decoration: BoxDecoration(
                color: const Color(0xffF5F6FA),
                borderRadius:
                    BorderRadius.circular(15), // Rounded corners with radius 15
              ),
              child: Image(
                image: images,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            textt,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          ),
          Text(
            "\$$price",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
