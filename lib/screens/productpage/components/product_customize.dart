import 'package:eldepizza/constants.dart';
import 'package:eldepizza/models/Size.dart';
import 'package:eldepizza/screens/productpage/components/quantity_counter.dart';
import 'package:eldepizza/screens/productpage/components/size_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:eldepizza/models/addons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    AddOns addOns = AddOns(title: "");

    void selectedSize0(String size) {
      setState(() {
        selectedSize = size;
      });
    }

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Customize',
          style: TextStyle(fontSize: lg, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.h),
        Text(
          'Pizza Sizes',
          style: TextStyle(fontSize: ml, fontWeight: FontWeight.normal),
        ),
        SizedBox(height: 4.h),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                demoSize.length,
                (index) => SizeCard(
                      size: demoSize[index].size,
                      image: demoSize[index].images,
                      isSelect: selectedSize == demoSize[index].size,
                      onselect: () {
                        selectedSize0(demoSize[index].size);
                      },
                    ))),
        SizedBox(height: 8.h),
        Text('Add ons',
            style: TextStyle(
                fontSize: ml,
                fontWeight: FontWeight.normal,
                color: Colors.black)),
        SizedBox(height: 4.h),
        Row(
            children: List.generate(
                addOns.demoAddOns.length,
                (index) => AddonsCategory(
                      category: addOns.demoAddOns.first.title,
                    ))),
        SizedBox(height: 8.h),
        Text('Quantity',
            style: TextStyle(
                fontSize: ml,
                fontWeight: FontWeight.normal,
                color: Colors.black)),
        SizedBox(height: 4.h),
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
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: const Color(0xFFF62D00), width: 1)),
          child: Center(
              child: Text(
            category,
            style: TextStyle(
                fontSize: sm, fontWeight: FontWeight.bold, color: ktextDark),
          )),
        ),
      ),
    );
  }
}
