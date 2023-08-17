import 'package:eldepizza/models/Product.dart';
import 'package:flutter/material.dart';

class CartItem {
  final Product product;
  int quantity;
  final Size size;
  CartItem({required this.product, this.quantity = 1, required this.size});
}

class Cart with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addToCart(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeToCart(Product product) {
    _items.remove(product);
    notifyListeners();
  }
}
