import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key, required this.onTabChange,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade900,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 14,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
          ]),
    );
  }
}
