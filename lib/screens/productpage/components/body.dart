import 'package:eldepizza/components/default_button.dart';
import 'package:eldepizza/screens/productpage/components/custom_back_button.dart';
import 'package:eldepizza/screens/productpage/components/product_customize.dart';
import 'package:eldepizza/screens/productpage/components/product_details_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
              const ProductDetailsCard(),
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
          press: () {},
        ),
      ),
    );
  }
}
