import 'package:flutter/material.dart';

class Product {
  final int id;
  final String image;
  final String name;
  final String category;
  final double price;
  final String description;

  bool favorite;

  Product({
    required this.id,
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
    id: 1,
    name: "iPhone 17 Pro Max",
    category: "Phone",
    price: 1299.99,
    image: "assets/images/iphone.png",
    description:
    "The iPhone 17 Pro Max is a premium smartphone designed for powerful performance, professional photography, and an immersive everyday experience.",
  ),

  Product(
    id: 2,
    name: "MacBook Pro M4",
    category: "Laptop",
    price: 2399.99,
    image: "assets/images/laptop.png",
    description:
    "The MacBook Pro M4 delivers powerful performance for work, programming, creative projects, and multitasking with a premium and portable design.",
  ),

  Product(
    id: 3,
    name: "Canon EOS R50",
    category: "Camera",
    price: 899.99,
    image: "assets/images/camera.png",
    description:
    "The Canon EOS R50 is a compact mirrorless camera made for capturing high-quality photos and videos with an easy-to-use design.",
  ),

  Product(
    id: 4,
    name: "Apple Watch Ultra",
    category: "Watch",
    price: 799.99,
    image: "assets/images/watch.png",
    description:
    "The Apple Watch Ultra combines a durable design with smart features for fitness tracking, notifications, communication, and everyday use.",
  ),

  Product(
    id: 5,
    name: "JBL Speaker",
    category: "Speaker",
    price: 249.99,
    image: "assets/images/speaker.png",
    description:
    "The JBL Speaker provides powerful and clear sound in a portable design, making it suitable for music, entertainment, and everyday listening.",
  ),

  // =========================================================
  // MORE PRODUCTS
  // =========================================================

  Product(
    id: 6,
    name: "Samsung Galaxy S26 Ultra",
    category: "Phone",
    price: 1199.99,
    image: "assets/images/samsung.png",
    description:
    "The Samsung Galaxy S26 Ultra is a premium smartphone with powerful performance, an advanced camera system, and a large immersive display.",
  ),

  Product(
    id: 7,
    name: "ASUS ROG Gaming Laptop",
    category: "Laptop",
    price: 1899.99,
    image: "assets/images/asus.png",
    description:
    "A powerful gaming laptop designed for gaming, programming, creative work, and demanding applications.",
  ),

  Product(
    id: 8,
    name: "Sony Alpha Camera",
    category: "Camera",
    price: 1099.99,
    image: "assets/images/sony_camera.png",
    description:
    "A modern mirrorless camera designed for photography and video creation with excellent image quality.",
  ),

  Product(
    id: 9,
    name: "Apple Watch Series",
    category: "Watch",
    price: 499.99,
    image: "assets/images/apple_watch.png",
    description:
    "A smart watch designed for notifications, communication, fitness tracking, and everyday activities.",
  ),

  Product(
    id: 10,
    name: "Sony Bluetooth Speaker",
    category: "Speaker",
    price: 199.99,
    image: "assets/images/sony_speaker.png",
    description:
    "A portable Bluetooth speaker that delivers clear audio and powerful sound for everyday entertainment.",
  ),
];