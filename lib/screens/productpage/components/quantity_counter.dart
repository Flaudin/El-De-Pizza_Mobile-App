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

  void _incrementCounter() {
    setState(() {
      quantity++;
    });
  }

  void _decrementCounter() {
    setState(() {
      quantity--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: _decrementCounter,
            icon: const Icon(
              Icons.remove_circle_outline,
              color: Colors.black,
            )),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Text(
          '$quantity',
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        IconButton(
          onPressed: _incrementCounter,
          icon: const Icon(
            Icons.add_circle_outline,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
