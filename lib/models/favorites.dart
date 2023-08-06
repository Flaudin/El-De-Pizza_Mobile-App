import 'package:eldepizza/models/Product.dart';
import 'package:flutter/material.dart';

class Favorite with ChangeNotifier {
  final List<Product> _favItems = [];
  List<Product> get favItems => _favItems;

  void addToCart(Product product) {
    _favItems.add(product);
  }

  void removeToCart(Product product) {
    _favItems.remove(product);
  }
}
