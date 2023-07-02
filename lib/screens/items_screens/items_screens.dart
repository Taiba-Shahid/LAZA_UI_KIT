import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';

import '../home_screen/components/choosebrand_containers.dart';
import '../home_screen/components/gridcontent.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularButton(
                    icon: Icons.arrow_back,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                const ChooseBrand(
                    addimage: AssetImage("assets/images/Vector.png"),
                    text: "Nike"),
                CircularButton(icon: Icons.shopping_cart, onPressed: () {}),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "365 Items",
                      style: headingText,
                    ),
                    Text(
                      "Availble in stock",
                      style: lightHeadingText,
                    )
                  ],
                ),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF5F6FA),
                    ),
                    child: const Row(
                      children: [Icon(Icons.edit), Text("_Edit")],
                    ))
              ],
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10, // Number of columns
                children: const [
                  Gridcontent(
                    images: AssetImage(
                      "assets/images/Rectangle 568.png",
                    ),
                    textt: "Nike Sportswear Club Fleece",
                    price: 99,
                  ),
                  Gridcontent(
                      images: AssetImage("assets/images/Rectangle 569.png"),
                      textt: "Trail Running Jacket Nike Windrunner",
                      price: 200),
                  Gridcontent(
                      images: AssetImage("assets/images/Rectangle 568 (1).png"),
                      textt: "Training Top Nike Sport Clash",
                      price: 300),
                  Gridcontent(
                      images: AssetImage("assets/images/Rectangle 569 (1).png"),
                      textt: "Trail Running Jacket Nike Windrunner",
                      price: 400),
                  Gridcontent(
                    images: AssetImage(
                      "assets/images/Rectangle 568.png",
                    ),
                    textt: "Nike Sportswear Club Fleece",
                    price: 99,
                  ),
                  Gridcontent(
                      images: AssetImage("assets/images/Rectangle 568 (1).png"),
                      textt: "Training Top Nike Sport Clash",
                      price: 300),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
