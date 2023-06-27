import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/add_to_cart_screen/components/addresses.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../../utils/text.dart';
import 'components/sportwear_containers.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularButton(
                    icon: Icons.arrow_back,
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text(
                    "Cart",
                    style: headingText,
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: const Column(
                  children: [
                    Sportwear(image: AssetImage("assets/images/image 6.png")),
                    SizedBox(
                      height: 10,
                    ),
                    Sportwear(image: AssetImage("assets/images/image 7.png")),
                    Addresses(
                      paymentname: "Delivery Address",
                      paymenttype: "Chhatak, Sunamgonj 12/8AB",
                      lightline: "Sylhet",
                      image: AssetImage("assets/images/Rectangle 584.png"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Addresses(
                  paymentname: "Payment Methode",
                  paymenttype: "Visa Classic",
                  lightline: "**** 7690",
                  image: AssetImage("assets/images/Frame.png")),
              const Text(
                "Order info",
                style: headingText,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: lightHeadingText,
                  ),
                  Text("\$99")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: lightHeadingText,
                  ),
                  Text("\$99")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: lightHeadingText,
                  ),
                  Text("\$99")
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Center(
                child: CustomButton(
                  text: "Check out",
                  marginBottom: 20,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
