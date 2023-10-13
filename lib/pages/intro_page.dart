import 'package:flutter/material.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //logo
              Image.asset('assets/images/Gel-Kahana8.jpg'),
              //title
              
              //description
              
              //button
              
            ],
          ),
        ),
      ),
    );
  }
}