import 'package:flutter/material.dart';

class ColorChangeContainer extends StatefulWidget {
  final AssetImage paymentimages;
  const ColorChangeContainer({super.key, required this.paymentimages});
  @override
  _ColorChangeContainerState createState() => _ColorChangeContainerState();
}

class _ColorChangeContainerState extends State<ColorChangeContainer> {
  bool isClicked = false;

  _ColorChangeContainerState(); //

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isClicked ? const Color(0xffFFEEE3) : const Color(0xffF5F6FA),
          border: Border.all(
            color: isClicked
                ? const Color(0xffFF5F00)
                : const Color(0xffF5F6FA), // Set the desired border colors
            width: 2.0,
          ),
        ),
        child: Image(image: widget.paymentimages),
      ),
    );
  }
}
