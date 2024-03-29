import 'package:eldepizza/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SizeCard extends StatelessWidget {
  const SizeCard({
    Key? key,
    required this.image,
    required this.size,
    required this.onselect,
    required this.isSelect,
  }) : super(key: key);

  final String image, size;
  final Function onselect;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onselect as void Function()?,
      child: Container(
        height: getProportionateScreenHeight(120),
        width: getProportionateScreenWidth(106),
        decoration: BoxDecoration(
            color: const Color(0xFFE0E0E0),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: isSelect ? kPrimaryColor : Colors.transparent)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenWidth(3.5)),
              child: Image.asset(image),
            ),
            Text(size)
          ],
        ),
      ),
    );
  }
}
