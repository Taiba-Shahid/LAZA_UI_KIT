import 'package:flutter/material.dart';
import 'package:twentyscreen_app/rewieslist/review_container.dart';

import '../getstartedScreen/signin_containers.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BacksButton(),
                  SizedBox(
                    width: 70,
                  ),
                  Center(
                    child: Text(
                      "Add Reviews",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "245 Reviews",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text("4.8"),
                            Image(image: AssetImage("assets/images/Star.png")),
                          ],
                        ),
                        const SizedBox(width: 105),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffFF7043)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ReviewsList()));
                            },
                            child: const Row(
                              children: [
                                Icon(Icons.edit_square),
                                Text("Add Review ")
                              ],
                            ))
                      ],
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: const [
                  ReviewContainer(
                      persomnamee: "Jenny wilsom",
                      personimages: AssetImage(
                          "assets/images/Rectangle_Copy_157-removebg-preview (1).png")),
                  ReviewContainer(
                      persomnamee: "Ronald Richard",
                      personimages: AssetImage(
                          "assets/images/Rectangle_Copy_161-removebg-preview.png")),
                  ReviewContainer(
                      persomnamee: "Guy Hawkins",
                      personimages: AssetImage(
                          "assets/images/Rectangle_Copy_219-removebg-preview.png")),
                  ReviewContainer(
                      persomnamee: "",
                      personimages: AssetImage(
                          "assets/images/Rectangle_Copy_295-removebg-preview.png")),
                  ReviewContainer(
                      persomnamee: "Guy Hawkins",
                      personimages: AssetImage(
                          "assets/images/Rectangle_Copy_219-removebg-preview.png")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
