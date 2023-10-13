import 'package:flutter/material.dart';
import 'package:study/components/bottom_nav_bar.dart';
import 'package:study/pages/cart_page.dart';
import 'package:study/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  //this selected index is to control  the bottom nav bar
  int selectedIndex = 0;

  //this method will update our selected index
  //when the user tap on the bottom bar 
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> pages = [
    //shop pages
    const ShopPage(),

    // //cart pages
    const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
     bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
     ), 
    );
  }
}