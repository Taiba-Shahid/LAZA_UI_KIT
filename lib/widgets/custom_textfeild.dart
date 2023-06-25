import 'package:flutter/material.dart';

import '../utils/text.dart';

class CostumnTextFeild extends StatelessWidget {
  final String textFeildName;
  final String? hintTexts;
  const CostumnTextFeild(
      {super.key, required this.textFeildName, this.hintTexts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textFeildName,
            style: lightHeadingText,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: hintTexts,
            ),
            style: const TextStyle(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
