import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/forgot_screen/forgot_screen.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/border_textfeild.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                CircularButton(
                    icon: Icons.arrow_back_sharp,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Image(
              image: AssetImage("assets/images/Group 24 (3).png"),
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 60,
            ),
            const ExtraBoldText(verybold: "Order Confirmed"),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Your order has been confirmed, we will send\n          you confirmation email shortly.",
              style: lightHeadingText,
            ),
            const SizedBox(
              height: 70,
            ),
            const BorderTextFeild(
                hinttext: "Go to orders", heights: 50),
            const SizedBox(
              height: 30,
            ),
            CustomButton(text: "Continue Shopping", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
