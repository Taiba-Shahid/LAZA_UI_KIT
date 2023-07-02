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
    final screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Row(
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
          const Text(
            "Name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const BorderTextFeild(
            hinttext: "Type your name ",
            heights: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "How was your experience ?",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Container(
              height: screenHeight * 0.3,
              width: screenWidth,
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
          const Spacer(),
          Center(
            child: CustomButton(
              text: 'Submit Review',
              marginBottom: 20,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentScreen()));
              },
            ),
          ),
        ],
      ),
    ));
  }
}
