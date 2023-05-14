import 'package:eldepizza/screens/productpage/components/body.dart';
import 'package:flutter/material.dart';

class ProductPageScreen extends StatelessWidget {
  static String routeName = "/product_page";
  const ProductPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
