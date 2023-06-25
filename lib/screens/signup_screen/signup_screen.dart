import 'package:flutter/material.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';
import 'package:twentyscreen_app/widgets/custom_textfeild.dart';

import '../forgot_screen/forgot_screen.dart';
import '../login_screen/login_screen.dart';


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
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  CircularButton(
                    icon: Icons.arrow_back,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            const ExtraBoldText(verybold: "Sign Up"),
            const SizedBox(
              height: 100,
            ),
            const CostumnTextFeild(
              textFeildName: "User Name",
            ),
            const SizedBox(
              height: 15,
            ),
            const CostumnTextFeild(
              textFeildName: "Password",
            ),
            const SizedBox(
              height: 15,
            ),
            const CostumnTextFeild(
              textFeildName: "Email Adress",
            ),
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
            CustomButton(
              text: 'Sign Up',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
