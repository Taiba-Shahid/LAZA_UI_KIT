import 'package:flutter/material.dart';

class ChooseBrand extends StatelessWidget {
  final AssetImage addimage;
  final String text;
  const ChooseBrand({super.key, required this.addimage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF5F6FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: const Color(0xffFEFEFE),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Image(image: addimage))),
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
