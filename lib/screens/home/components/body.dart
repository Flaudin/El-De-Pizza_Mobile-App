import 'package:eldepizza/screens/home/components/best_selling_products.dart';
import 'package:eldepizza/screens/home/components/combo_offers.dart';
import 'package:eldepizza/screens/home/components/home_header.dart';
import 'package:eldepizza/screens/home/components/product_banner.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          const HomeHeader(),
          SizedBox(height: getProportionateScreenHeight(20)),
          const DiscountBanner(),
          SizedBox(height: getProportionateScreenHeight(20)),
          const ComboOffers(),
          SizedBox(height: getProportionateScreenHeight(20)),
          const BestSellingProducts(),
          SizedBox(height: getProportionateScreenHeight(20)),
          const BestSellingProducts(),
          SizedBox(height: getProportionateScreenHeight(20)),
        ],
      ),
    ));
  }
}
