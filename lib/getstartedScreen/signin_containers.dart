import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SigninContainers extends StatelessWidget {
  final Color fillColor;
  final String containertext;
  final IconData? iconss;
  const SigninContainers(
      {super.key,
      required this.fillColor,
      required this.containertext,
      this.iconss});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 335,
        decoration: BoxDecoration(
            color: fillColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconss,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              containertext,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(254, 254, 254, 1)),
            ),
          ],
        ));
  }
}

class LastContainers extends StatelessWidget {
  final String innertext;
  const LastContainers({super.key, required this.innertext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 335,
      decoration: BoxDecoration(
          color: purplecolor, borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          innertext,
          style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(254, 254, 254, 1)),
        ),
      ]),
    );
  }
}

class BacksButton extends StatelessWidget {
  const BacksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
            color: Color(0xffF5F6FA), shape: BoxShape.circle),
        child: const Icon(
          Icons.arrow_back,
          size: 25,
        ),
      ),
    );
  }
}
