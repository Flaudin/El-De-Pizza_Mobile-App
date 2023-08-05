import 'package:eldepizza/screens/home/components/best_selling_products.dart';
import 'package:eldepizza/screens/home/components/combo_offers.dart';
import 'package:eldepizza/screens/home/components/icon_counter.dart';
import 'package:eldepizza/screens/home/components/product_banner.dart';
import 'package:eldepizza/screens/home/components/search_field.dart';
import 'package:eldepizza/screens/home/components/search_suggest.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';
import 'new_products.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.23,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                            text: "E",
                            style: TextStyle(color: Color(0xFFB2B2B2))),
                        TextSpan(
                            text: "L",
                            style: TextStyle(color: Color(0xFFF62D00))),
                        TextSpan(text: '\u00A0'),
                        TextSpan(text: "D"),
                        TextSpan(
                            text: "e",
                            style: TextStyle(color: Color(0xFFB2B2B2))),
                        TextSpan(text: '\u00A0'),
                        TextSpan(text: "P"),
                        TextSpan(text: "i"),
                        TextSpan(
                            text: "z",
                            style: TextStyle(color: Color(0xFFF62D00))),
                        TextSpan(
                            text: "z",
                            style: TextStyle(color: Color(0xFFF62D00))),
                        TextSpan(text: "a"),
                      ]),
                ),
                IconBtnWithCounter(
                  svgSrc: "android/assets/icons/Doorbell.png",
                  numOfitem: 2,
                  press: () {},
                ),
              ]),
              SizedBox(height: getProportionateScreenHeight(10)),
              const SearchField(),
              SizedBox(height: getProportionateScreenHeight(14)),
              const SearchSuggest(),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const ComboOffers(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const BestSellingProducts(),
            SizedBox(height: getProportionateScreenHeight(20)),
            const NewProducts(),
            SizedBox(height: getProportionateScreenHeight(20)),
          ],
        ),
      )),
    );
  }
}
