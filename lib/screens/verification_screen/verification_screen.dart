import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/back_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../forgot_screen/forgot_screen.dart';
import '../new_password_screen/new_password_screen.dart';
import 'verificationcode.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const ExtraBoldText(verybold: "Verification Code"),
            const Image(image: AssetImage("assets/images/IMG.png")),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerifyText(verificationtext: "7"),
                VerifyText(verificationtext: "2"),
                VerifyText(verificationtext: "1"),
                VerifyText(verificationtext: "7")
              ],
            ),
            const SizedBox(
              height: 110,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "00:20",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  " resend confirmation code.",
                  style: lightHeadingText,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Confirm Code',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewPasswordScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
