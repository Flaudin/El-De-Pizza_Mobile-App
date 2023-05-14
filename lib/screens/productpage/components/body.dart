import 'package:eldepizza/screens/productpage/components/custom_back_button.dart';
import 'package:eldepizza/screens/productpage/components/product_customize.dart';
import 'package:eldepizza/screens/productpage/components/product_details_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: getProportionateScreenHeight(360),
          child: Stack(children: [
            Image.asset('android/assets/images/details.png'),
            const CustomBackIcon(),
            const ProductDetailsCard(),
            SizedBox(height: getProportionateScreenHeight(20)),
          ]),
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        const ProductCustomize(),
      ]),
    );
  }
}
