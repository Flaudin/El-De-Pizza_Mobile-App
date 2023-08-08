import 'package:eldepizza/screens/home/components/section_heading.dart';
import 'package:eldepizza/service/prouct_service.dart';
import 'package:flutter/material.dart';

import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class BestSellingProducts<T extends ProductService> extends StatelessWidget {
  const BestSellingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SectionTitle(title: 'Best Selling', press: () {})),
        SizedBox(height: getProportionateScreenWidth(20)),
        FutureBuilder(
          future: fetch_product(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (snapshot.hasError) {
              return const Center(child: Text("Failed to load Products"));
            } else {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      demoProducts.length,
                      (index) {
                        if (demoProducts[index].isPopular) {
                          return ProductCard(product: demoProducts[index]);
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                    SizedBox(width: getProportionateScreenWidth(20)),
                  ],
                ),
              );
            }
          },
        )
      ],
    );
  }
}
