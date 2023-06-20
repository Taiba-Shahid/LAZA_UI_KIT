import 'package:flutter/material.dart';

class TwoButtons extends StatelessWidget {
  final IconData twobuttoon;
  const TwoButtons({super.key, required this.twobuttoon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration:
          const BoxDecoration(color: Color(0xffF5F6FA), shape: BoxShape.circle),
      child: Icon(
        twobuttoon,
        size: 25,
      ),
    );
  }
}
