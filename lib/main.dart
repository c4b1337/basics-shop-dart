import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study/models/cart.dart';
import 'package:study/pages/intro_page.dart';

void main() {
  runApp(
    const BasicShop(),
  );
}

class BasicShop extends StatelessWidget {
  const BasicShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPages(),
      ),
    );
  }
}
