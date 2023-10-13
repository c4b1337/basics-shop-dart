import 'package:flutter/material.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(
    const BasicShop(),
  );
}

class BasicShop extends StatelessWidget {
  const BasicShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPages(),
    );
  }
}