import 'package:flutter/material.dart';
import 'package:study/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sales
  List<Shoe> shoes = [
    Shoe(
      name: 'Gel Kahana 8',
      imagePath: 'assets/images/Gel-Kahana8.jpg',
      price: '234.99',
      description: 'Gel Kahana 8',
    ),
    Shoe(
      name: 'solomon xt 6',
      imagePath: 'assets/images/solomon-xt6.png',
      price: '234.99',
      description: 'solomon xt 6',
    ),
    Shoe(
      name: 'adidas yeezy 700',
      imagePath: 'assets/images/adidas-yeezy-700.png',
      price: '234.99',
      description: 'adidas yeezy 700',
    ),
    Shoe(
      name: 'Asics HN2 S-Protoblast',
      imagePath: 'assets/images/HN2-S-Protoblast.png',
      price: '234.99',
      description: 'Asics hn2 s-protoblast',
    ),
  ];
  //list of items in cart
  List<Shoe> userCart = [

  ];
  //get list of shoes for sales
  List<Shoe> getShoesList() {
    return shoes;
  }
  //get cart
  List<Shoe> getCart() {
    return userCart;
  }
  //add item to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  //remove item from cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
