import 'package:flutter/material.dart';
import 'package:twentyscreen_app/widgets/back_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';


class AdressScreen extends StatelessWidget {
  const AdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //   Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Country",
              //         style: headingText,
              //       ),
              //       Buttons(
              //           buttoncolor: Color(0xffF5F6FA),
              //           buttoName: "Bangladesh",
              //           buttontextstyle: lightHeadingText)
              //     ],
              //   ),
              //   Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "City",
              //         style: headingText,
              //       ),
              //       Buttons(
              //           buttoncolor: Color(0xffF5F6FA),
              //           buttoName: "Sylhet",
              //           buttontextstyle: lightHeadingText)
              //     ],
              //   ),
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
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.only(left: 8, top: 18, bottom: 10),
                child: Text(
                  "Type Your Number",
                  style: TextStyle(
                      color: Color(
                        0xff8F959E,
                      ),
                      fontSize: 15),
                ),
              ),
            ),
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
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.only(left: 8, top: 18, bottom: 10),
                child: Text(
                  "Type Your Address",
                  style: TextStyle(
                      color: Color(
                        0xff8F959E,
                      ),
                      fontSize: 15),
                ),
              ),
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
              height: 70,
            ),
            CustomButton(
              text: 'Save Address',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
