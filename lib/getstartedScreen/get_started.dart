import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:twentyscreen_app/getstartedScreen/signin_containers.dart';
import 'package:twentyscreen_app/signupScreen/signup_screen.dart';

import '../utils/text.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 60,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [BacksButton()],
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
        const SizedBox(
          height: 155,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SigninContainers(
            fillColor: Color.fromRGBO(66, 103, 178, 1),
            containertext: "Facebook",
            iconss: Remix.facebook_box_fill,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SigninContainers(
              fillColor: Color(0xff1DA1F2),
              containertext: "Twitter",
              iconss: Remix.twitter_fill),
        ),
        const SigninContainers(
            fillColor: Color(0xffEA4335),
            containertext: "Google",
            iconss: Remix.google_fill),
        const SizedBox(
          height: 155,
        ),
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
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const LastContainers(
            innertext: "Google",
          ),
        )
      ]),
    ));
  }
}
