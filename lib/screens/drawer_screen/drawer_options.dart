import 'package:flutter/material.dart';

class DrawerOptions extends StatelessWidget {
  final IconData icon;
  final String text;
  const DrawerOptions({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 25,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
