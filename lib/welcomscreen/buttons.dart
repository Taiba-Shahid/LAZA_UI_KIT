import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Color buttoncolor;
  final String buttoName;
  final TextStyle buttontextstyle;
  const Buttons(
      {super.key,
      required this.buttoncolor,
      required this.buttoName,
      required this.buttontextstyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 148,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: const Color(0xffF5F6FA).withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 2)
        ],
        color: buttoncolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          buttoName,
          style: buttontextstyle,
        ),
      ),
    );
  }
}
