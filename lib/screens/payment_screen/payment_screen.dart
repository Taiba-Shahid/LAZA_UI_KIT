import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:twentyscreen_app/screens/add_newcard_screen/add_newcard_screen.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../../utils/text.dart';
import '../../widgets/border_textfeild.dart';
import '../../widgets/circular_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircularButton(
                          icon: Icons.arrow_back,
                          onPressed: () => Navigator.pop(context),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        const Text(
                          "Payment",
                          style: headingText,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/Card 1.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/images/Card 2.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddnewCard()));
                      },
                      child: Container(
                        width: 335,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffF6F2FF),
                            border: Border.all(
                                width: 0.8, color: const Color(0xff9775FA)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Remix.add_box_fill,
                              size: 17,
                              color: Color(0xff9775FA),
                            ),
                            Text(
                              "Add new card",
                              style: lightHeadingText,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Card Owner",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const BorderTextFeild(
                      hinttext: "Write your name..",
                      heights: 50,
                      widths: 350,
                      icons: null,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Card Number ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const BorderTextFeild(
                      hinttext: "Type your card number",
                      heights: 50,
                      widths: 350,
                      icons: null,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "XPV",
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            BorderTextFeild(
                              hinttext: "Contry",
                              heights: 50,
                              widths: 150,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CCV",
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            BorderTextFeild(
                                hinttext: "City", heights: 50, widths: 150)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(text: "Save Card", onPressed: () {})
                  ]),
            )));
  }
}
