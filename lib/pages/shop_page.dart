import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study/components/shoe_tile.dart';
import 'package:study/models/cart.dart';
import 'package:study/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // Search bar
          Container(
            padding: const EdgeInsets.all(13.0),
            margin: const EdgeInsets.all(13.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search Bar',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey[600],
                  size: 27,
                ),
              ],
            ),
          ),
          // Hot Picks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks🔥',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Hot Picks List
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //get shoe from list
                Shoe shoe = value.getShoesList()[index];
                //return shoe tile
                return ShoeTile(
                  shoe: shoe,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
