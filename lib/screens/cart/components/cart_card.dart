import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.title,
    required this.description,
    required this.rating,
    required this.time,
    required this.image,
  }) : super(key: key);

  final String title, description, time, image;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(112),
      decoration: BoxDecoration(
        color: const Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(children: [
        Image.asset(
          image,
          width: getProportionateScreenWidth(100),
          height: getProportionateScreenHeight(100),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(8),
              vertical: getProportionateScreenHeight(10)),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '$description\n',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '\n',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        color: Colors.black,
                      ),
                    ),
                    const WidgetSpan(
                        child: Icon(
                      Icons.star,
                      color: Color(0xFFEEC306),
                      size: 20,
                    )),
                    TextSpan(
                      // ignore: unnecessary_string_interpolations
                      text: '$rating',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(text: '\u00A0'),
                    const TextSpan(text: '\u00A0'),
                    const TextSpan(text: '\u00A0'),
                    const TextSpan(text: '\u00A0'),
                    const TextSpan(text: '\u00A0'),
                    const TextSpan(text: '\u00A0'),
                    const TextSpan(text: '\u00A0'),
                    const TextSpan(text: '\u00A0'),
                    const TextSpan(text: '\u00A0'),
                    TextSpan(
                      // ignore: unnecessary_string_interpolations
                      text: '$time',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              // ignore: sized_box_for_whitespace
            ],
          ),
        ),
      ]),
    );
  }
}
