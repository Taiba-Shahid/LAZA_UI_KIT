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
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFEFEFE),
          borderRadius: BorderRadius.circular(15)),
      height: 150,
      width: 335,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 100,
                decoration: BoxDecoration(
                    color: const Color(0xffF5F6FA),
                    borderRadius: BorderRadius.circular(15)),
                child: Image(
                  image: widget.image,
                  fit: BoxFit.contain,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Men's Tie-Dye T-Shirt \nNike Sportswear"),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "\$45 (-\$4.00 Tax)",
                  style: lightHeadingText,
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    const SizedBox(
                      width: 50,
                    ),
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
