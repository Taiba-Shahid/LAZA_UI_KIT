import 'package:flutter/material.dart';

class TextContainerss extends StatelessWidget {
  final String texts;
  const TextContainerss({super.key, required this.texts});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: const Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        texts,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      )),
    );
  }
}
