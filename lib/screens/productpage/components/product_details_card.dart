import 'package:eldepizza/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:intl/intl.dart';

import '../../../size_config.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: getProportionateScreenHeight(160),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(17),
            vertical: getProportionateScreenHeight(2)),
        child: GlassContainer(
          width: getProportionateScreenWidth(340),
          height: MediaQuery.of(context).size.height * 0.25,
          color: const Color(0xFF777777).withOpacity(0.4),
          blur: 10,
          borderRadius: BorderRadius.circular(18),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Text(
                      product.title,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(20),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'WorkSans',
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Pizza",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.normal,
                        fontFamily: 'WorkSans',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xFFEEC306),
                          size: 18,
                        ),
                        Text(
                          product.rating.toString(),
                          style: const TextStyle(
                              fontFamily: 'WorkSans',
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        SizedBox(width: getProportionateScreenWidth(16)),
                        Text(product.time,
                            style: const TextStyle(
                                fontFamily: 'WorkSans',
                                fontSize: 16,
                                color: Colors.white)),
                      ],
                    ),
                    //SizedBox(height: getProportionateScreenHeight(8)),
                    Text(
                      product.description,
                      style: const TextStyle(
                          fontFamily: 'WorkSans', color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(220),
                        ),
                        Text(
                          NumberFormat.simpleCurrency(
                                  locale: 'tl', decimalDigits: 2)
                              .format(product.price),
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
