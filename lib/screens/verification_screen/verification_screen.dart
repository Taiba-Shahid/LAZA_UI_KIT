import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:twentyscreen_app/screens/home_screen/home_screen.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../forgot_screen/forgot_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  int _seconds = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
        if (_seconds >= 20) {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.05, // 5% of screen height
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
              const ExtraBoldText(verybold: "Verification Code"),
              Image(
                image: const AssetImage("assets/images/IMG.png"),
                height: screenHeight * 0.3,
              ),
              const SizedBox(
                height: 30,
              ),
              const Pinput(
                length: 4,
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$_seconds",
                    style: const TextStyle(color: Colors.black),
                  ),
                  const Text(
                    " resend confirmation code.",
                    style: lightHeadingText,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Confirm Code',
                marginBottom: 20,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen(
                                scaffoldKey: GlobalKey(),
                              )));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
