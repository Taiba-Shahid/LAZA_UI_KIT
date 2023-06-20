import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:twentyscreen_app/utils/colors.dart';
import 'package:twentyscreen_app/utils/text.dart';

import '../../widgets/circular_button.dart';
import '../address_screen/adress_screen.dart';
import '../forgot_screen/forgot_screen.dart';
import '../product_detail_screen/product_detail_screen.dart';
import 'components/choosebrand_containers.dart';
import 'components/gridcontent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xff8F959E),
        selectedItemColor: const Color(0xff9775FA),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ""),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularButton(
                  icon: Remix.menu_2_fill,
                  onPressed: () => Navigator.pop(context),
                ),
                CircularButton(
                  icon: Remix.shopping_cart_fill,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdressScreen())),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ExtraBoldText(verybold: "Hello"),
            const Text(
              "Welcome to Laza",
              style: lightHeadingText,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 270,
                  decoration: BoxDecoration(
                      color: const Color(0xffF5F6FA),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xff8F959E),
                      ),
                      Text(
                        "Search...",
                        style: lightHeadingText,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: purplecolor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Remix.user_voice_fill,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Choose Brand",
                  style: headingText,
                ),
                Text(
                  "View All",
                  style: lightHeadingText,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChooseBrand(
                      addimage: AssetImage(
                        "assets/images/Adidas.png",
                      ),
                      text: "Adidas"),
                  SizedBox(
                    width: 8,
                  ),
                  ChooseBrand(
                      addimage: AssetImage("assets/images/Vector.png"),
                      text: "Nike"),
                  SizedBox(
                    width: 8,
                  ),
                  ChooseBrand(
                      addimage: AssetImage("assets/images/fila-9 1.png"),
                      text: "Fila"),
                  SizedBox(
                    width: 8,
                  ),
                  ChooseBrand(
                      addimage: AssetImage("assets/images/puma-logo 1.png"),
                      text: "Puma"),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrival",
                  style: headingText,
                ),
                Text(
                  "View All",
                  style: lightHeadingText,
                )
              ],
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 0.8,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10, // Number of columns
                children: const [
                  Gridcontent(
                      images: AssetImage(
                        "assets/images/Rectangle 568.png",
                      ),
                      textt: "Nike Sportswear Club Fleece", price: 99,),
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
                      price: 400)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
