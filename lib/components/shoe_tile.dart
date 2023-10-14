import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;

  const ShoeTile({Key? key, required this.shoe,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child:  Column(
        children: [
          //shoe picture
          Image.asset(shoe.imagePath),
          //description

          //price and details
          Text(shoe.price.toString()),
          //button to add to cart 
        ],
      ),
    );
  }
}
