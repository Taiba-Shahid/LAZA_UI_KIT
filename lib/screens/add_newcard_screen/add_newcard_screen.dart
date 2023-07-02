import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/add_newcard_screen/components/payment_mthods.dart';
import 'package:twentyscreen_app/screens/order_confirmed_screen/order_confirmed_screen.dart';

import '../../utils/text.dart';
import '../../widgets/border_textfeild.dart';
import '../../widgets/circular_button.dart';
import '../../widgets/custom_button.dart';

class AddnewCard extends StatelessWidget {
  const AddnewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
 
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
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
              const SizedBox(
                width: 70,
              ),
              const Text(
                "Add new card",
                style: headingText,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: screenHeight * 0.1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ColorChangeContainer(
                    paymentimages: AssetImage("assets/images/image 9.png")),
                SizedBox(
                  width: 10,
                ),
                ColorChangeContainer(
                    paymentimages: AssetImage("assets/images/image 10.png")),
                SizedBox(
                  width: 10,
                ),
                ColorChangeContainer(
                    paymentimages: AssetImage("assets/images/Vector (1).png")),
                SizedBox(
                  width: 10,
                ),
                ColorChangeContainer(
                    paymentimages: AssetImage("assets/images/image 9.png")),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Card Owner",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          const BorderTextFeild(
            hinttext: "Write your name..",
            heights: 50,
            icons: null,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Card Number",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          const BorderTextFeild(
            hinttext: "Write your name..",
            heights: 50,
            icons: null,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
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
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CCV",
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BorderTextFeild(hinttext: "City", heights: 50),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.1,
          ),
          Center(
            child: CustomButton(
                text: "Add Card",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderConfirmedScreen()));
                }),
          )
        ]),
      ),
    ));
  }
}
