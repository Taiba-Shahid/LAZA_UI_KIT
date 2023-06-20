import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../utils/text.dart';

class ReviewContainer extends StatelessWidget {
  final String persomnamee;
  final AssetImage personimages;
  const ReviewContainer({
    super.key,
    required this.persomnamee,
    required this.personimages,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipOval(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color(0xffCCD9E0),
                    backgroundImage: personimages,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      persomnamee,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Remix.alarm_line,
                          color: Color(0xff8F959E),
                          size: 20,
                        ),
                        Text(
                          "30 sep,2020",
                          style: lightHeadingText,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "4.8",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      " Rating",
                      style: lightHeadingText,
                    )
                  ],
                ),
                Image(image: AssetImage("assets/images/Star.png"))
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..",
          style: lightHeadingText,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
