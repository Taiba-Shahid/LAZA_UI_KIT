import 'package:flutter/material.dart';
import 'package:twentyscreen_app/Navigationbar/bottom_navigation_bar.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';
import 'package:twentyscreen_app/widgets/custom_textfeild.dart';

import '../../utils/text.dart';
import '../forgot_screen/forgot_screen.dart';

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
              const ExtraBoldText(verybold: "New Password"),
              const SizedBox(
                height: 110,
              ),
              const CostumnTextFeild(textFeildName: "Password"),
              const SizedBox(
                height: 20,
              ),
              const CostumnTextFeild(textFeildName: "New Password"),
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
              CustomButton(
                text: 'Confirm Code',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
