import 'package:eldepizza/models/Product.dart';
import 'package:eldepizza/models/cart.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addToCart(Product product) {
    int index = _items.indexWhere((item) => item.product.id == product.id);
    if (index != 1) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(
        product: product,
      ));
    }
    notifyListeners();
  }

  double get totalPrice {
    double totalPrice = 0.0;
    for (var items in _items) {
      totalPrice += items.product.price * items.quantity;
    }
    return totalPrice;
  }
}
