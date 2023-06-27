import 'package:flutter/material.dart';
import 'package:twentyscreen_app/widgets/border_textfeild.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

class AdressScreen extends StatelessWidget {
  const AdressScreen({super.key});

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
                padding: const EdgeInsets.only(
                  top: 60,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularButton(
                      icon: Icons.arrow_back,
                      onPressed: () => Navigator.pop(context),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const Center(
                      child: Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const BorderTextFeild(
                hinttext: "Type your name",
                heights: 50,
                icons: null,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Country",
                      ),
                      BorderTextFeild(
                        hinttext: "Contry",
                        heights: 50,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "City",
                      ),
                      BorderTextFeild(
                        hinttext: "City",
                        heights: 50,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Phone Number",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const BorderTextFeild(
                hinttext: "Type your number",
                heights: 50,
              ),
              // Container(

              const SizedBox(
                height: 15,
              ),
              const Text(
                "Address",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const BorderTextFeild(
                hinttext: "Enter your address",
                heights: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Save as primary address?",
                    style: TextStyle(fontSize: 15),
                  ),
                  Switch(
                      value: true,
                      activeColor: const Color(0xff4BC76D),
                      onChanged: (po) {})
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              CustomButton(
                text: 'Save Address',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
