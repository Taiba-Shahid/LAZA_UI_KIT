import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:twentyscreen_app/screens/drawer_screen/drawer_screen.dart';
import 'package:twentyscreen_app/screens/items_screens/items_screens.dart';
import 'package:twentyscreen_app/utils/colors.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/border_textfeild.dart';

import '../../widgets/circular_button.dart';
import '../forgot_screen/forgot_screen.dart';
import 'components/choosebrand_containers.dart';
import 'components/gridcontent.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const Drawer(
        child: DrawerScreen(),
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
                    onPressed: () {
                      _key.currentState?.openDrawer();
                    }),
                CircularButton(
                  icon: Remix.shopping_cart_fill,
                  onPressed: () {},
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
                const BorderTextFeild(
                  hinttext: "Search..",
                  heights: 50,
                  widths: 260,
                  icons: Icons.search,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemScreen()));
                  },
                  child: Container(
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
