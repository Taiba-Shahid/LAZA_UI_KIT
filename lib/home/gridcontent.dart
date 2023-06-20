import 'package:flutter/material.dart';

class Gridcontent extends StatelessWidget {
  final AssetImage images;
  final String textt;
  const Gridcontent({super.key, required this.images, required this.textt});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              fit: BoxFit.contain,
            ),
          ),
        ),
        Text(
          textt,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
        ),
        const Text(
          "\$99",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
