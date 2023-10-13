import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Center(
          child: Text(
        'Cart Page',
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
