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
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.05, // 5% of screen height
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
          SizedBox(
            height: screenHeight * 0.1,
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
          const Spacer(),
          CustomButton(
            text: 'Sign Up',
            marginBottom: 20,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
