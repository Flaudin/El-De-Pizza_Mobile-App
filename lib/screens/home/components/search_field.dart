import 'package:eldepizza/screens/home/components/all_products.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.86,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFF777777)),
      ),
      child: TextField(
        // ignore: avoid_print
        onChanged: (value) => print(value),
        onEditingComplete: () {
          Navigator.pushNamed(context, ProductLits.routeName);
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(12),
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: "Search Pizza",
          prefixIcon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
