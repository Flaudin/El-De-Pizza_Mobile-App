import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../../../size_config.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    super.key,
  });

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
          height: getProportionateScreenHeight(198),
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
                      "Cheesy Pepperoni",
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
                        const Text(
                          '4.7',
                          style: TextStyle(
                              fontFamily: 'WorkSans',
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        SizedBox(width: getProportionateScreenWidth(16)),
                        const Text('7-10 mins',
                            style: TextStyle(
                                fontFamily: 'WorkSans',
                                fontSize: 16,
                                color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    const Text(
                      'Pepperoni pizza is a popular type of pizza \nthat features tomato sauce, cheese, and \nslices of spicy, cured pepperoni sausage \non top.',
                      style: TextStyle(
                          fontFamily: 'WorkSans', color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    Row(
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(220),
                        ),
                        const Text(
                          '₱495.00',
                          style: TextStyle(
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
              // const Spacer(),
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //       horizontal: getProportionateScreenWidth(20)),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Pizza",
              //         style: TextStyle(
              //           fontSize: getProportionateScreenWidth(20),
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       Text(
              //         "Pizza",
              //         style: TextStyle(
              //           fontSize: getProportionateScreenWidth(20),
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
