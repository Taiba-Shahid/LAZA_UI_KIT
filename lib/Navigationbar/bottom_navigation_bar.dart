import 'package:flutter/material.dart';
import 'package:twentyscreen_app/screens/home_screen/home_screen.dart';
import 'package:twentyscreen_app/screens/items_screens/items_screens.dart';
import 'package:twentyscreen_app/screens/payment_screen/payment_screen.dart';

import '../screens/whishlist_screen/wishlist_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void _onTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final screens = [
    const HomeScreen(),
    const WhishlistScreen(),
    const ItemScreen(),
    const PaymentScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xff8F959E),
        selectedItemColor: const Color(0xff9775FA),
        currentIndex: _currentIndex,
        onTap: _onTab,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ""),
        ],
      ),
      body: screens[_currentIndex],
    );
  }
}
