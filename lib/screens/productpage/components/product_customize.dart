import 'package:eldepizza/models/Size.dart';
import 'package:eldepizza/screens/productpage/components/quantity_counter.dart';
import 'package:eldepizza/screens/productpage/components/size_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class ProductCustomize extends StatefulWidget {
  const ProductCustomize({
    super.key,
  });

  @override
  State<ProductCustomize> createState() => _ProductCustomizeState();
}

class _ProductCustomizeState extends State<ProductCustomize> {
  @override
  Widget build(BuildContext context) {
    String selectedSize = 'Classic';

    void _selectedSize(String size) {
      setState(() {
        selectedSize = size;
      });
    }

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                demoSize.length,
                (index) => SizeCard(
                      size: demoSize[index].size,
                      image: demoSize[index].images,
                      isSelect: selectedSize == demoSize[index].size,
                      onselect: () {
                        _selectedSize(demoSize[index].size);
                      },
                    ))),
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
        const QuantityCounter(),
      ]),
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
