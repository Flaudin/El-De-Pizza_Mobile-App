import 'package:eldepizza/models/Product.dart';
import 'package:eldepizza/screens/productpage/components/body.dart';
import 'package:flutter/material.dart';

class ProductPageScreen extends StatelessWidget {
  static String routeName = "/product_page";
  const ProductPageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductDetailArgs args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailArgs;
    return Scaffold(
      body: Body(product: args.product),
    );
  }
}

class ProductDetailArgs {
  final Product product;

  ProductDetailArgs({required this.product});
}
