import 'package:eldepizza/components/default_button.dart';
import 'package:eldepizza/constants.dart';
import 'package:eldepizza/models/Product.dart';
import 'package:eldepizza/models/cart.dart';
import 'package:eldepizza/screens/home/home_screen.dart';
import 'package:eldepizza/screens/productpage/components/custom_back_button.dart';
import 'package:eldepizza/screens/productpage/components/product_customize.dart';
import 'package:eldepizza/screens/productpage/components/product_details_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: getProportionateScreenHeight(360),
            child: Stack(children: [
              Image.asset('android/assets/images/details.png'),
              const CustomBackIcon(),
              ProductDetailsCard(
                product: product,
              ),
              //SizedBox(height: getProportionateScreenHeight(60)),
            ]),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          const ProductCustomize(),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultButton(
          text: 'Order Now',
          press: () {
            Provider.of<Cart>(context, listen: false).addToCart(product);
            ScaffoldMessenger.of(context).showSnackBar(kAddToCart);
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
      ),
    );
  }
}
