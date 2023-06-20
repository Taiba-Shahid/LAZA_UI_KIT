import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/text.dart';


class TextFeild extends StatelessWidget {
  final String textheading;
  const TextFeild({super.key, required this.textheading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textheading,
            style: lightHeadingText,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: "",
            ),
            style: TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
