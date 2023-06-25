import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';
import 'package:twentyscreen_app/widgets/custom_textfeild.dart';

import '../verification_screen/verification_screen.dart';

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
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
        child: Column(
          children: [
            Row(
              children: [
                CircularButton(
                  icon: Icons.arrow_back,
                  onPressed: () => Navigator.pop(context),
                ),
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
            const CostumnTextFeild(textFeildName: "Email Adress"),
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
            CustomButton(
              text: 'Confirm Mail',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
