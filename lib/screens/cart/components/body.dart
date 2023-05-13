import 'package:dotted_border/dotted_border.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Center(
              child: Column(children: [
                SingleChildScrollView(
                  child: Column(children: const [
                    CartCard(
                      description: 'pizza',
                      image: 'android/assets/images/fav1.png',
                      rating: '4.7',
                      time: '7-10 mins',
                      title: 'Cheesy Pepperoni',
                    )
                  ]),
                ),
              ]),
            )
          ]),
        ),
        SizedBox(height: getProportionateScreenHeight(240)),
        const CartCheckDesc()
      ],
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.title,
    required this.description,
    required this.rating,
    required this.time,
    required this.image,
  }) : super(key: key);

  final String title, description, rating, time, image;

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

class CartCheckDesc extends StatelessWidget {
  const CartCheckDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.bottomCenter,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xFF313133),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32))),
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(24)),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: 'Deliver cost',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
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
                text: '₱75.00\n',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            TextSpan(
                text: 'Sub Total',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
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
                text: '₱495.00\n',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            TextSpan(
              text: '\n',
            ),
            TextSpan(
              text: 'Total',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
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
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
            TextSpan(text: '\u00A0'),
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
              text: '₱570.00',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ])),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DottedBorder(
            dashPattern: const [8, 4],
            strokeWidth: 2,
            color: Color(0xFF777777),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: getProportionateScreenWidth(246),
              height: getProportionateScreenHeight(44),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF313133),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Add a promo code',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          SizedBox(
            width: getProportionateScreenWidth(246),
            height: getProportionateScreenHeight(44),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF62D00),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Checkout',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
        ],
      ),
    );
  }
}
