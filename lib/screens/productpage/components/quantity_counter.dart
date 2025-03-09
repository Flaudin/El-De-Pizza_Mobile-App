import 'package:eldepizza/constants.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class QuantityCounter extends StatefulWidget {
  const QuantityCounter({
    super.key,
  });

  @override
  State<QuantityCounter> createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: getProportionateScreenHeight(40),
          width: getProportionateScreenWidth(40),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
              onPressed: () {
                setState(() {
                  if (quantity > 0) {
                    quantity--;
                  }
                });
              },
              icon: const Icon(
                Icons.remove_circle_outline,
                color: ktextDark,
              )),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Text(
          '$quantity',
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Container(
          height: getProportionateScreenHeight(40),
          width: getProportionateScreenWidth(40),
          decoration: BoxDecoration(
            color: quantity > 0 ? const Color(0xFFF62D00) : Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {
              setState(() {
                quantity++;
              });
            },
            icon: Icon(
              Icons.add_circle_outline,
              color: quantity > 0 ? ktextLight : ktextDark,
            ),
          ),
        ),
      ],
    );
  }
}
