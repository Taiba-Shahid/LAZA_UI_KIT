import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/back_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../forgot_screen/forgot_screen.dart';
import '../signup_screen/textfeild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 60),
                  child: CircularButton(
                    icon: Icons.arrow_back,
                    onPressed: () => Navigator.pop(context),
                  ),
                )
              ],
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const Text(
              "Please enter your data to continue",
              style: lightHeadingText,
            ),
            const SizedBox(
              height: 80,
            ),
            const TextFeild(textheading: "Username"),
            const SizedBox(
              height: 15,
            ),
            const TextFeild(textheading: "Password"),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Remember me"),
                  Switch(
                    value: true,
                    onChanged: (p0) {},
                    activeColor: const Color(0xff34C759),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "By connecting your account confirm that you agree",
                  style: lightHeadingText,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "with our",
                      style: lightHeadingText,
                    ),
                    Text(
                      "Term and Condition",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotScreen()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
