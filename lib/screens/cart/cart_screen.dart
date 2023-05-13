import 'package:eldepizza/screens/cart/components/body.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_nav.dart';
import '../../enum.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNav(selectedMenu: MenuState.cart),
    );
  }
}
