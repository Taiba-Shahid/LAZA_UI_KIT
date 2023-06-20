import 'package:flutter/material.dart';
import 'package:twentyscreen_app/forgotScreen/forgot_screen.dart';
import 'package:twentyscreen_app/getstartedScreen/signin_containers.dart';
import 'package:twentyscreen_app/signupScreen/textfeild.dart';
import 'package:twentyscreen_app/utils/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 60),
                  child: BacksButton(),
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
                GestureDetector(
                  child: const LastContainers(
                    innertext: "Login",
                  ),
                  onTap: () {
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
