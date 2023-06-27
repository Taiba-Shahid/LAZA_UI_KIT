import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';
import 'package:twentyscreen_app/widgets/custom_textfeild.dart';

import '../new_password_screen/new_password_screen.dart';

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
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
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
            Image(
              image: const AssetImage(
                "assets/images/IMG.png",
              ),
              height: screenHeight * 0.3,
            ),
            const SizedBox(
              height: 30,
            ),
            const CostumnTextFeild(textFeildName: "Email Adress"),
            // SizedBox(
            //   height: screenHeight * 0.1,
            // ),
            const Spacer(),
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
              marginBottom: 20,
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
