import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, time;
  final List<String> images;
  final String favImg;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product(
      {required this.id,
      required this.images,
      required this.colors,
      required this.rating,
      required this.isFavourite,
      required this.isPopular,
      required this.title,
      required this.price,
      required this.description,
      required this.time,
      required this.favImg});

  factory Product.fromJSON(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        images: json['images'],
        colors: json[''],
        rating: json['rating'],
        isFavourite: json['isFavorite'],
        isPopular: json['isPopular'],
        title: json['name'],
        price: json['price'],
        description: json['description'],
        time: json['time'],
        favImg: json['']);
  }
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "android/assets/images/pizza1.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Cheesy Bacon Pizza",
    price: 515.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    time: '7-10mins',
    favImg: "android/assets/images/pizza1.png",
  ),
  Product(
      id: 2,
      images: [
        "android/assets/images/pizza2.png",
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Cheesy Mushroom Pizza",
      price: 495.00,
      description: description,
      rating: 4.1,
      isPopular: true,
      time: '7-10mins',
      favImg: "android/assets/images/pizza2.png",
      isFavourite: false),
  Product(
      id: 3,
      images: [
        "android/assets/images/pizza3.png",
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Cheesy Pepperoni Pizza",
      price: 495.55,
      description: description,
      rating: 4.1,
      isFavourite: true,
      isPopular: true,
      time: '7-10mins',
      favImg: "android/assets/images/pizza3.png"),
  Product(
      id: 4,
      images: [
        "android/assets/images/pizza4.png",
      ],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Ham & Cheese Pizza",
      price: 515.20,
      description: description,
      rating: 4.1,
      isFavourite: true,
      time: '7-10mins',
      favImg: "android/assets/images/pizza4.png",
      isPopular: false),
];

const String description = "Lots of Pizza";
