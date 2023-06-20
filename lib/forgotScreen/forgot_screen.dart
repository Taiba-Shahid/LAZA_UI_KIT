import 'package:flutter/material.dart';
import 'package:twentyscreen_app/getstartedScreen/signin_containers.dart';
import 'package:twentyscreen_app/verificationscreen/verification_screen.dart';
import 'package:twentyscreen_app/signupScreen/textfeild.dart';
import 'package:twentyscreen_app/utils/text.dart';

class ExtraBoldText extends StatelessWidget {
  final String verybold;
  const ExtraBoldText({super.key, required this.verybold});

  @override
  Widget build(BuildContext context) {
    return Text(
      verybold,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
        child: Column(
          children: [
            const Row(
              children: [
                BacksButton(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ExtraBoldText(verybold: "Forgot Password"),
            const Image(image: AssetImage("assets/images/IMG.png")),
            const SizedBox(
              height: 30,
            ),
            const TextFeild(textheading: "Email Address"),
            const SizedBox(
              height: 115,
            ),
            const Text(
              "Please write your email to receive a",
              style: lightHeadingText,
            ),
            const Text(
              "confirmation code to set a new password.",
              style: lightHeadingText,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: const LastContainers(innertext: "Confirm Mail"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
