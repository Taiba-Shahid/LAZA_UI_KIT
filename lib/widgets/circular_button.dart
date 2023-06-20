import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CircularButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
          color: Color(0xffF5F6FA),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 25,
        ),
      ),
    );
  }
}
