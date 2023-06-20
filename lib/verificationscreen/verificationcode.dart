import 'package:flutter/material.dart';

class VerifyText extends StatelessWidget {
  final String verificationtext;
  const VerifyText({super.key, required this.verificationtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffFEFEFE),
          border: Border.all(color: const Color.fromRGBO(231, 232, 234, 1))),
      height: 90,
      width: 60,
      child: Center(
          child: Text(
        verificationtext,
        style: const TextStyle(fontSize: 20),
      )),
    );
  }
}
