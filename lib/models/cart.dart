class Cart{
  final String name;
  final String image;
  final int price;
  final int quantity;

  Cart({ required this.name, required this.image, required this.price, required this.quantity});

  factory Cart.fromJson(Map<String, dynamic> json){
    return Cart(
      name: json['name'],
      image: json['image'],
      price: json['price'],
      quantity: json['quantity']
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'image': image,
    'price': price,
    'quantity': quantity
  };


}