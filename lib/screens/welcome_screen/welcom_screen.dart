import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/colors.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../get_started_screen/get_started_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {


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
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
            child: Container(
              height: 244,
              width: 345,
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
                      CustomButton(
                        text: "Men",
                        color: const Color(0xffF5F6FA),
                        textColor: const Color(0xff8F959E),
                        width: 148,
                        onPressed: () {},
                      ),
                      CustomButton(
                        text: 'Women',
                        color: purplecolor,
                        width: 148,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GetStarted()));
                        },
                      ),
                    ],
                  ),
                  const Text(
                    "Skip",
                    style: TextStyle(
                        color: Color(0xff8F959E),
                        fontSize: 17,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
