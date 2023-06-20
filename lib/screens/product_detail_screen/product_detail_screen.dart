import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/back_button.dart';
import 'package:twentyscreen_app/widgets/custom_button.dart';

import '../reviews_list_screen/reviews_list_screen.dart';
import 'images_container.dart';
import 'text_containers.dart';

class ProductDetailScreen extends StatelessWidget {
  final String name;
  final AssetImage image;
  final double price;

  const ProductDetailScreen(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  height: 350,
                  width: double.infinity,
                  color: const Color(0xffF2F2F2),
                  child: Image(
                    image: image,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularButton(
                        icon: Remix.menu_2_fill,
                        onPressed: () {},
                      ),
                      CircularButton(
                        icon: Remix.shopping_cart_fill,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Men's Printed Pullover Hoodie",
                          style: lightHeadingText,
                        ),
                        Text(
                          "Price",
                          style: lightHeadingText,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        "\$$price",
                        style: headingText,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ImagesContainer(
                          imageee:
                              AssetImage("assets/images/Rectangle 575.png")),
                      ImagesContainer(
                          imageee:
                              AssetImage("assets/images/Rectangle 576.png")),
                      ImagesContainer(
                          imageee:
                              AssetImage("assets/images/Rectangle 577.png")),
                      ImagesContainer(
                          imageee:
                              AssetImage("assets/images/Rectangle 578.png"))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Size Guide",
                          style: lightHeadingText,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextContainerss(texts: "S"),
                        TextContainerss(texts: "M"),
                        TextContainerss(texts: "L"),
                        TextContainerss(texts: "XL"),
                        TextContainerss(texts: "2XL"),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 9),
                    child: Text(
                      "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a",
                      style: TextStyle(
                          fontSize: 13.5,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff8F959E)),
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        "performance feel with",
                        style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff8F959E)),
                      ),
                      Text(
                        " Read More..",
                        style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "View All",
                          style: lightHeadingText,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReviewsList(),
                          ));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xffCCD9E0),
                                backgroundImage: AssetImage(
                                    "assets/images/Rectangle_Copy_157-removebg-preview.png"),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ronald Richard",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Row(
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
                        Column(
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
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
                    style: lightHeadingText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "with VAT,SD",
                            style: lightHeadingText,
                          )
                        ],
                      ),
                      Text(
                        "\$125",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    text: 'Add to Cart',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
