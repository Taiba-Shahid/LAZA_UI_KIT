import 'package:flutter/material.dart';
import 'package:twentyscreen_app/newpasswordscreen/newpassword_screen.dart';
import 'package:twentyscreen_app/verificationscreen/verificationcode.dart';

import '../forgotScreen/forgot_screen.dart';
import '../getstartedScreen/signin_containers.dart';
import '../utils/text.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

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
            GestureDetector(
              child: const LastContainers(innertext: "Confirm Code"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewPasswordScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
