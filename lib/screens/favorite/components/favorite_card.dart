import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

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
  final double rating;
  final String time;
  final String image;

  @override
  Widget build(BuildContext context) {
    //final carte = Provider.of<Cart>(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(6)),
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
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          image,
          //scale: 4.20,
          height: 100,
          width: 100,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
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
            ],
          ),
        ),
      ]),
    );
  }
}
