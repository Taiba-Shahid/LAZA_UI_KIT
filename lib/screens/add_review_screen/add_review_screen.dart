import 'package:flutter/material.dart';
import 'package:twentyscreen_app/widgets/back_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

class ReviwsScreen extends StatelessWidget {
  const ReviwsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
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
                CustomButton(
                  text: 'Add Reviews',
                  color: const Color(0xffF5F6FA),
                  textColor: const Color(0xff8F959E),
                  width: 148,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Text(
            "Name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                color: const Color(0xffF5F6FA),
                borderRadius: BorderRadius.circular(15)),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 18, bottom: 10),
              child: Text(
                "Type Your Name",
                style: TextStyle(
                    color: Color(
                      0xff8F959E,
                    ),
                    fontSize: 15),
              ),
            ),
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
                borderRadius: BorderRadius.circular(15)),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 18, bottom: 10),
              child: Text(
                "Describe your experience?",
                style: TextStyle(
                    color: Color(
                      0xff8F959E,
                    ),
                    fontSize: 15),
              ),
            ),
          ),
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
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
