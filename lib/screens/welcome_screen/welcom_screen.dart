import 'package:flutter/material.dart';
import 'package:twentyscreen_app/Navigationbar/bottom_navigation_bar.dart';
import 'package:twentyscreen_app/utils/colors.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../get_started_screen/get_started_screen.dart';

// Use Expanded or Flexible whereever possible
// Screen sizes are dynamic

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Welcome (1).png",
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: screenHeight * 0.4, // 40% of screen height
            width: screenWidth * 0.9,
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // const Padding(padding: EdgeInsets.all(10)),
                const Text(
                  "Look Good,Feel Good",
                  style: headingText,
                ),
                const Text(
                  "Create your individual & unique style and\n look amazing everyday. ",
                  textAlign: TextAlign.center,
                  style: lightHeadingText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'Men',
                        // text: screenHeight.round().toString(),
                        color: const Color(0xffF5F6FA),
                        textColor: const Color(0xff8F959E),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        text: 'Women',
                        // text: screenWidth.round().toString(),
                        color: purplecolor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetStarted()));
                        },
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation())),
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                        color: Color(0xff8F959E),
                        fontSize: 17,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
