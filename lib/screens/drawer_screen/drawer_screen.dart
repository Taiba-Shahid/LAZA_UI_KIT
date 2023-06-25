import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/drawer_screen/drawer_options.dart';
import 'package:twentyscreen_app/utils/text.dart';
import 'package:twentyscreen_app/widgets/circular_button.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListTile(
            leading: CircularButton(
                icon: Icons.menu,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: const Image(
                          image: AssetImage("assets/images/Frame 1 1.png"),
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "  Mahr Arjun",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "  Verfied profile",
                            style: lightHeadingText,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "3 orders",
                        style: lightHeadingText,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.light_mode,
                        size: 25,
                      ),
                      Text(
                        " Dark Mode",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Switch(value: false, onChanged: (no) {})
                ],
              ),
              const DrawerOptions(
                  icon: Icons.info_outline_rounded, text: " Account Info"),
              const SizedBox(
                height: 15,
              ),
              const DrawerOptions(icon: Icons.lock, text: " Password"),
              const SizedBox(
                height: 15,
              ),
              const DrawerOptions(icon: Icons.shopping_bag, text: " Order"),
              const SizedBox(
                height: 15,
              ),
              const DrawerOptions(icon: Icons.card_giftcard, text: " My card"),
              const SizedBox(
                height: 15,
              ),
              const DrawerOptions(icon: Icons.settings, text: " Settings")
            ],
          ),
        )
      ],
    );
  }
}
