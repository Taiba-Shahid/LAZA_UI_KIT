import 'package:flutter/material.dart';
import 'package:twentyscreen_app/forgotScreen/forgot_screen.dart';
import 'package:twentyscreen_app/loginscreen/login_screen.dart';
import 'package:twentyscreen_app/signupScreen/textfeild.dart';
import 'package:twentyscreen_app/utils/colors.dart';

import '../getstartedScreen/signin_containers.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [BacksButton()],
              ),
            ),
            const ExtraBoldText(verybold: "Sign Up"),
            const SizedBox(
              height: 100,
            ),
            const TextFeild(textheading: "Username"),
            const SizedBox(
              height: 15,
            ),
            const TextFeild(textheading: "Password"),
            const SizedBox(
              height: 15,
            ),
            const TextFeild(textheading: "Emai Adress"),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Remember me"),
                  Switch(
                    value: true,
                    onChanged: (po) {},
                    activeColor: const Color(0xff34C759),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 95,
            ),
            GestureDetector(
              child: SigninContainers(
                fillColor: purplecolor,
                containertext: "Sign Up",
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
