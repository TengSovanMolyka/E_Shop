import 'package:flutter/material.dart';

class Product {
  String image;
  String name;
  String category;
  double price;
  String description;
  bool favorite;

  Product({
    required this.image,
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    this.favorite = false,
  });
}

List<Product> productList = [
  Product(
    name: "iPhone 17 Pro Max",
    category: "Phone",
    price: 1299.99,
    image: "assets/images/iphone.png",
    description:
    "The iPhone 17 Pro Max is a premium smartphone designed for powerful performance, professional photography, and an immersive everyday experience.",
    favorite: false,
  ),

  Product(
    name: "MacBook Pro M4",
    category: "Laptop",
    price: 2399.99,
    image: "assets/images/laptop.png",
    description:
    "The MacBook Pro M4 delivers powerful performance for work, programming, creative projects, and multitasking with a premium and portable design.",
    favorite: false,
  ),

  Product(
    name: "Canon EOS R50",
    category: "Camera",
    price: 899.99,
    image: "assets/images/camera.png",
    description:
    "The Canon EOS R50 is a compact mirrorless camera made for capturing high-quality photos and videos with an easy-to-use design.",
    favorite: false,
  ),

  Product(
    name: "Apple Watch Ultra",
    category: "Watch",
    price: 799.99,
    image: "assets/images/watch.png",
    description:
    "The Apple Watch Ultra combines a durable design with smart features for fitness tracking, notifications, communication, and everyday use.",
    favorite: false,
  ),

  Product(
    name: "JBL Speaker",
    category: "Speaker",
    price: 249.99,
    image: "assets/images/speaker.png",
    description:
    "The JBL Speaker provides powerful and clear sound in a portable design, making it suitable for music, entertainment, and everyday listening.",
    favorite: false,
  ),
];
