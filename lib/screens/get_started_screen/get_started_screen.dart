import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:twentyscreen_app/utils/colors.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../../utils/text.dart';
import '../signup_screen/signup_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.05, // 5% of screen height
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                CircularButton(
                  icon: Icons.arrow_back,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          const Text(
            "Let's Get Started",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: "Inter"),
          ),
          SizedBox(
            height: screenHeight * 0.2,
          ),
          CustomButton(
            text: 'Facebook',
            color: const Color.fromRGBO(66, 103, 178, 1),
            icon: Remix.facebook_box_fill,
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          CustomButton(
            text: 'Twitter',
            color: const Color(0xff1DA1F2),
            icon: Remix.twitter_fill,
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          CustomButton(
            text: 'Twitter',
            color: const Color(0xffEA4335),
            icon: Remix.google_fill,
            onPressed: () {},
          ),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                textAlign: TextAlign.center,
                style: lightHeadingText,
              ),
              Text(
                "Signin",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Get Started',
            color: purplecolor,
            marginBottom: 30,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreen()));
            },
          ),
          
        ],
      ),
    );
  }
}
