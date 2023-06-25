import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/add_review_screen/add_review_screen.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';

import 'review_container.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularButton(
                    icon: Icons.arrow_back,
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  const Center(
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
                        const SizedBox(width: 99),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffFF7043)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddReviewScreen()));
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
