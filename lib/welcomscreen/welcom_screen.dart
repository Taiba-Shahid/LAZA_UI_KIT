import 'package:flutter/material.dart';
import 'package:twentyscreen_app/getstartedScreen/get_started.dart';
import 'package:twentyscreen_app/utils/colors.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/welcomscreen/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Welcome (1).png",
            ),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 500, left: 15, right: 15, bottom: 15),
        child: Container(
          height: 244,
          width: 345,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // const Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Look Good,Feel Good",
                style: boldHeadingText,
              ),
              const Text(
                "Create your individual & unique style and\n look amazing everyday. ",
                textAlign: TextAlign.center,
                style: lightHeadingText,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: const Buttons(
                      buttoncolor: Color(0xffF5F6FA),
                      buttoName: "Men",
                      buttontextstyle: TextStyle(color: Color(0xff8F959E)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStarted()));
                    },
                    child: Buttons(
                      buttoncolor: purplecolor,
                      buttoName: "Women",
                      buttontextstyle: TextStyle(color: whitecolor),
                    ),
                  ),
                ],
              ),
              const Text(
                "Skip",
                style: TextStyle(
                    color: Color(0xff8F959E),
                    fontSize: 17,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
