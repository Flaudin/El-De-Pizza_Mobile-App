import 'package:eldepizza/screens/home/components/section_heading.dart';
import 'package:eldepizza/service/prouct_service.dart';
import 'package:flutter/material.dart';
import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class BestSellingProducts extends StatefulWidget {
  const BestSellingProducts({super.key});

  @override
  State<BestSellingProducts> createState() => _BestSellingProductsState();
}

class _BestSellingProductsState extends State<BestSellingProducts> {
  late Future<List<Product>> futurepro;
  final List<Product> products = [];

  @override
  void initState() {
    futurepro = ProductService().fetch_product();
    super.initState();
  }

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
          future: futurepro,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (snapshot.hasError) {
              return const Center(child: Text("Failed to load Products"));
            } else {
              products.addAll(snapshot.data!);
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      products.length,
                      (index) {
                        if (products[index].isPopular) {
                          return ProductCard(product: products[index]);
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
