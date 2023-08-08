import 'package:eldepizza/models/Product.dart';
import 'package:eldepizza/screens/favorite/components/favorite_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          vertical: 20, horizontal: getProportionateScreenWidth(24)),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                demoProducts.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: FavoriteCard(
                        title: demoProducts[index].title,
                        description: 'pizza',
                        rating: 4.9,
                        time: demoProducts[index].time,
                        image: demoProducts[index].images.toString(),
                      ),
                    ))),
      ),
    );
  }
}
