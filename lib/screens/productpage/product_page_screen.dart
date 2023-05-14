import 'package:flutter/material.dart';

class ProductPageScreen extends StatelessWidget {
  static String routeName = "/product_page";
  const ProductPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Page",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
