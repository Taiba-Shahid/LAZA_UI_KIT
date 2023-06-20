import 'package:flutter/material.dart';

class ImagesContainer extends StatelessWidget {
  final AssetImage imageee;
  const ImagesContainer({super.key, required this.imageee});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
          color: const Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(10)),
      child: Image(image: imageee),
    );
  }
}
