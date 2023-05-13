// ignore_for_file: prefer_const_constructors

import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Column(
          children: [
            FavoriteCard(
                image: 'android/assets/images/fav1.png',
                title: 'Cheesy Pepperoni',
                description: 'pizza',
                rating: '4.9',
                time: '7-10 mins'),
            SizedBox(height: getProportionateScreenHeight(20)),
            FavoriteCard(
                image: 'android/assets/images/fav2.png',
                title: 'Cheesy Bacon',
                description: 'pizza',
                rating: '4.9',
                time: '7-10 mins'),
            SizedBox(height: getProportionateScreenHeight(20)),
            FavoriteCard(
                image: 'android/assets/images/fav3.png',
                title: 'Cheesy Mushroom',
                description: 'pizza',
                rating: '4.9',
                time: '7-10 mins'),
          ],
        ),
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    Key? key,
    required this.title,
    required this.description,
    required this.rating,
    required this.time,
    required this.image,
  }) : super(key: key);

  final String title;
  final String description;
  final String rating;
  final String time;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenHeight(320),
      height: getProportionateScreenHeight(132),
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
                    TextSpan(text: '\u00A0'),
                    TextSpan(text: '\u00A0'),
                    TextSpan(text: '\u00A0'),
                    TextSpan(text: '\u00A0'),
                    TextSpan(text: '\u00A0'),
                    TextSpan(text: '\u00A0'),
                    TextSpan(text: '\u00A0'),
                    TextSpan(text: '\u00A0'),
                    TextSpan(text: '\u00A0'),
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
              Container(
                  margin:
                      EdgeInsets.only(left: getProportionateScreenWidth(60)),
                  width: getProportionateScreenWidth(100),
                  height: getProportionateScreenHeight(25),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF62D00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Add to cart '))),
            ],
          ),
        ),
      ]),
    );
  }
}
