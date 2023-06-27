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
    final double screenHeight = MediaQuery.of(context).size.height;
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
          Container(
            height: screenHeight * 0.2,
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
          const SizedBox(height: 20),
          Text(
            textt,
            maxLines: 2,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          ),
          const SizedBox(height: 5),
          Text(
            "\$$price",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
