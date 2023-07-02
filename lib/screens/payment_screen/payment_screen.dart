import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../../utils/text.dart';
import '../../widgets/border_textfeild.dart';
import '../../widgets/circular_button.dart';
import '../../widgets/custom_button.dart';
import '../add_newcard_screen/add_newcard_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Row(
            children: [
              CircularButton(
                icon: Icons.arrow_back,
                onPressed: () => Navigator.pop(context),
              ),
              SizedBox(
                width: screenWidth * 0.25,
              ),
              const Text(
                "Payment",
                style: headingText,
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset('assets/images/Card 1.png'),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/Card 2.png'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddnewCard()));
            },
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.07,
              decoration: BoxDecoration(
                  color: const Color(0xffF6F2FF),
                  border:
                      Border.all(width: 0.8, color: const Color(0xff9775FA)),
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
          const Text(
            "Card Owner",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          BorderTextFeild(
            hinttext: "Write your name..",
            heights: screenHeight * 0.07,
            icons: null,
          ),
          const Text(
            "Card Number ",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          BorderTextFeild(
            hinttext: "Type your card number",
            heights: screenHeight * 0.07,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "XPV",
                    ),
                    BorderTextFeild(
                        hinttext: "Contry", heights: screenHeight * 0.07)
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CCV",
                    ),
                    BorderTextFeild(
                        hinttext: "City", heights: screenHeight * 0.07)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(child: CustomButton(text: "Save Card", onPressed: () {})),
        ]),
      ),
    ));
  }
}



//  Padding(
//         padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   CircularButton(
//                     icon: Icons.arrow_back,
//                     onPressed: () => Navigator.pop(context),
//                   ),
//                   const SizedBox(
//                     width: 70,
//                   ),
//                   const Text(
//                     "Payment",
//                     style: headingText,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 height: 200,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     Image.asset('assets/images/Card 1.png'),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Image.asset('assets/images/Card 2.png'),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const AddnewCard()));
//                 },
//                 child: Container(
//                   width: 335,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       color: const Color(0xffF6F2FF),
//                       border: Border.all(
//                           width: 0.8, color: const Color(0xff9775FA)),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Remix.add_box_fill,
//                         size: 17,
//                         color: Color(0xff9775FA),
//                       ),
//                       Text(
//                         "Add new card",
//                         style: lightHeadingText,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "Card Owner",
//                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               const BorderTextFeild(
//                 hinttext: "Write your name..",
//                 heights: 50,
//                 icons: null,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "Card Number ",
//                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
//               ),
//               const SizedBox(
//                 height: 5,
//               ),
//               const BorderTextFeild(
//                 hinttext: "Type your card number",
//                 heights: 50,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "XPV",
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       BorderTextFeild(
//                         hinttext: "Contry",
//                         heights: 50,
//                       )
//                     ],
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "CCV",
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       BorderTextFeild(hinttext: "City", heights: 50)
//                     ],
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               CustomButton(text: "Save Card", onPressed: () {}),
//             ]),
//       ),