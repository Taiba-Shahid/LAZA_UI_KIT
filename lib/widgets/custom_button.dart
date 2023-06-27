import 'package:flutter/material.dart';
import 'package:twentyscreen_app/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final double? width;
  final double? marginBottom;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.width,
    this.color,
    this.textColor,
    this.marginBottom,
    this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: width ?? screenWidth * 0.8,
        margin: EdgeInsets.only(bottom: marginBottom ?? 0),
        decoration: BoxDecoration(
          color: color ?? purplecolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: Colors.white,
              ),
            SizedBox(width: icon != null ? 10 : 0),
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: textColor ?? const Color.fromRGBO(254, 254, 254, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
