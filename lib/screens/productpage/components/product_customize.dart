import 'package:eldepizza/screens/productpage/components/size_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class ProductCustomize extends StatelessWidget {
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

  const ProductCustomize({
    super.key,
  });

  final int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Customize',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          const Text(
            'Pizza Sizes',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: getProportionateScreenHeight(16)),
          Row(
            children: [
              const SizeCard(
                image: 'android/assets/images/size.png',
                size: 'Classic',
              ),
              SizedBox(width: getProportionateScreenWidth(6)),
              const SizeCard(
                image: 'android/assets/images/size.png',
                size: '16 x 16',
              ),
              SizedBox(width: getProportionateScreenWidth(6)),
              const SizeCard(
                image: 'android/assets/images/size.png',
                size: '18 x 18',
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          const Text('Add ons',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
          SizedBox(height: getProportionateScreenHeight(16)),
          Row(
            children: [
              const AddonsCategory(
                category: 'Iced Tea',
              ),
              SizedBox(width: getProportionateScreenWidth(6)),
              const AddonsCategory(
                category: 'Coca cola',
              ),
              SizedBox(width: getProportionateScreenWidth(6)),
              const AddonsCategory(
                category: 'Pineapple Juice',
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(16)),
          const Text('Quantity',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
          SizedBox(height: getProportionateScreenHeight(16)),
          Row(
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              IconButton(
                onPressed: _incrementCounter,
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class AddonsCategory extends StatelessWidget {
  const AddonsCategory({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(4)),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: getProportionateScreenHeight(25),
          width: getProportionateScreenWidth(98),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: const Color(0xFFF62D00), width: 1)),
          child: Center(
              child: Text(
            category,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
          )),
        ),
      ),
    );
  }
}
