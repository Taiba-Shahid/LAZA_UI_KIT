import 'package:flutter/material.dart';

import '../../../utils/text.dart';

class Addresses extends StatelessWidget {
  final String paymentname;
  final String paymenttype;
  final String lightline;
  final AssetImage image;
  const Addresses(
      {super.key,
      required this.paymentname,
      required this.paymenttype,
      required this.lightline,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(paymentname), const Icon(Icons.arrow_right)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffF5F6FA),
                    borderRadius: BorderRadius.circular(15)),
                child: Image(
                  image: image,
                  fit: BoxFit.contain,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(paymenttype),
                Text(
                  lightline,
                  style: lightHeadingText,
                )
              ],
            ),
            Checkbox(
              activeColor: const Color(0xff4AC76D),
              value: true,
              onChanged: (po) {},
              shape: const CircleBorder(),
            )
          ],
        )
      ],
    );
  }
}
