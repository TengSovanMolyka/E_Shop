import 'package:flutter/material.dart';
class Product {
  String image;
  String name;
  String category;
  double price;
  bool favorite;

  Product({
    required this.image,
    required this.name,
    required this.category,
    required this.price,
    this.favorite = false,
  });
}
List<Product> productList = [

  Product(
    name: "iPhone 17 Pro Max",
    category: "Phone",
    price: 1299.99,
    image: "assets/images/iphone.png",
    favorite: false,
  ),

  Product(
    name: "MacBook Pro M4",
    category: "Laptop",
    price: 2399.99,
    image: "assets/images/laptop.png",
    favorite: false,
  ),

  Product(
    name: "Canon EOS R50",
    category: "Camera",
    price: 899.99,
    image: "assets/images/camera.png",
    favorite: false,
  ),

  Product(
    name: "Apple Watch Ultra",
    category: "Watch",
    price: 799.99,
    image: "assets/images/watch.png",
    favorite: false,
  ),

  Product(
    name: "JBL Speaker",
    category: "Speaker",
    price: 249.99,
    image: "assets/images/speaker.png",
    favorite: false,
  ),
];