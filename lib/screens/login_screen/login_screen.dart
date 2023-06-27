import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/verification_screen/verification_screen.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';
import 'package:twentyscreen_app/widgets/custom_textfeild.dart';

import '../forgot_screen/forgot_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.05, // 5% of screen height
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
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
          SizedBox(
            height: screenHeight * 0.1,
          ),
          const CostumnTextFeild(textFeildName: "Username"),
          const SizedBox(
            height: 15,
          ),
          const CostumnTextFeild(textFeildName: "Password"),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotScreen()));
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.red),
                  ),
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
          const Spacer(),
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
                marginBottom: 20,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerificationScreen()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
