import 'package:flutter/material.dart';
import 'package:twentyscreen_app/home/home_screen.dart';

import 'package:twentyscreen_app/signupScreen/textfeild.dart';

import '../forgotScreen/forgot_screen.dart';
import '../getstartedScreen/signin_containers.dart';
import '../utils/text.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
        child: SingleChildScrollView(
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
              const ExtraBoldText(verybold: "New Password"),
              const SizedBox(
                height: 110,
              ),
              const TextFeild(textheading: "Password"),
              const SizedBox(
                height: 20,
              ),
              const TextFeild(textheading: "Confirm Password"),
              const SizedBox(
                height: 200,
              ),
              const Text(
                "Please write your new password.",
                style: lightHeadingText,
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
                          builder: (context) => const HomeScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
