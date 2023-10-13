import 'package:flutter/material.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(
    const Basic_shop(),
  );
}

class Basic_shop extends StatelessWidget {
  const Basic_shop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPages(),
    );
  }
}