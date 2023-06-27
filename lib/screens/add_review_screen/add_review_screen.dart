import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/payment_screen/payment_screen.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/border_textfeild.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularButton(
                    icon: Icons.arrow_back,
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  const Text(
                    "Review",
                    style: headingText,
                  ),
                ],
              ),
            ),
            const Text(
              "Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const BorderTextFeild(
              hinttext: "Type your name ",
              heights: 50,
            ),
            const Text(
              "How was your experience ?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Describe you experience",
                      border: InputBorder.none,
                      hintStyle: lightHeadingText),
                )),
            const Text(
              "Star",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                const Text(
                  "0.0",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Slider(
                    value: 0.7,
                    activeColor: const Color(0xffF5F6FA),
                    inactiveColor: const Color(0xffF5F6FA),
                    thumbColor: const Color(0xff9775FA),
                    onChanged: (po) {},
                  ),
                ),
                const Text(
                  "0.7",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            CustomButton(
              text: 'Submit Review',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentScreen()));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
