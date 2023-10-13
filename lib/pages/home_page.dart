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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 25,
                color: Colors.black,
              ),
            ),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //avatar/logo
            Column(
              children: [
                DrawerHeader(
                  child: Image.network(
                    'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA5L3Jhd3BpeGVsX29mZmljZV8yNl9waG90b19vZl9sYW1hX2FuaW1hbF9pc29sYXRlZF9vbl93aGl0ZV9iOTRhMDZhZS0xNDMwLTRlYjItYTNlYi0wODdhZmJjZjVjNTcucG5n.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                //other pages
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.grey[200],
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      size: 30,
                      color: Colors.grey[200],
                    ),
                    title: Text(
                      'Info',
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 50),
              child: ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  size: 30,
                  color: Colors.grey[200],
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
