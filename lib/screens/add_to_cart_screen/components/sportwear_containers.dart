import 'package:flutter/material.dart';

import '../../../utils/text.dart';
import '../../../widgets/circular_button.dart';

class Sportwear extends StatefulWidget {
  final AssetImage image;

  const Sportwear({super.key, required this.image});

  @override
  State<Sportwear> createState() => _SportwearState();
}

class _SportwearState extends State<Sportwear> {
  int count = 1;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    if (count != 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFEFEFE),
          borderRadius: BorderRadius.circular(15)),
      width: screenWidth,
      height: screenheight * 0.2,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: screenWidth * 0.2,
                // height: screenheight,
                decoration: BoxDecoration(
                    color: const Color(0xffF5F6FA),
                    borderRadius: BorderRadius.circular(15)),
                child: Image(
                  image: widget.image,
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Men's Tie-Dye T-Shirt \nNike Sportswear"),
                const Text(
                  "\$45 (-\$4.00 Tax)",
                  style: lightHeadingText,
                ),
                const Spacer(),
                Row(
                  children: [
                    CircularButton(
                        icon: Icons.arrow_upward,
                        onPressed: () {
                          incrementCount();
                        }),
                    Text(" $count "),
                    CircularButton(
                        icon: Icons.arrow_downward,
                        onPressed: () {
                          decrementCount();
                        }),
                    CircularButton(icon: Icons.delete, onPressed: () {})
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
