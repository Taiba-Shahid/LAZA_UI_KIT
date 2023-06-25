import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/text.dart';

class BorderTextFeild extends StatelessWidget {
  final String hinttext;
  final IconData? icons;
  final double heights;
  final double widths;
  const BorderTextFeild(
      {super.key,
      required this.hinttext,
      this.icons,
      required this.heights,
      required this.widths});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heights,
      width: widths,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),

          filled: true,

          fillColor: const Color(0xffF5F6FA),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
                  const BorderSide(color: Color(0xff8F959E), width: 0.3)),
          prefixIconColor: const Color(0xff8F959E),
          prefixIcon: icons != null ? Icon(icons) : null,
          hintText: hinttext, // Provides a hint text
          hintStyle: lightHeadingText,
        ),
      ),
    );
  }
}
