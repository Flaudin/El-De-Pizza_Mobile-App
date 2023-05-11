import 'package:eldepizza/components/default_button.dart';
import 'package:eldepizza/screens/home/components/search_field.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

import 'icon_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                svgSrc: "android/assets/icons/Bell.svg",
                numOfitem: 3,
                press: () {},
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SearchField(),
              ButtonBar(),
            ],
          ),
        ],
      ),
    );
  }
}
