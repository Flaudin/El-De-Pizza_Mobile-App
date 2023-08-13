import 'package:eldepizza/components/product_card.dart';
import 'package:eldepizza/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class ProductLits extends StatefulWidget {
  static String routeName = "/prolist";
  const ProductLits({Key? key}) : super(key: key);

  @override
  State<ProductLits> createState() => _ProductLitsState();
}

class _ProductLitsState extends State<ProductLits> {
  TextEditingController searchpro = TextEditingController();

  final List<ProductCard> allProducts = List<ProductCard>.generate(
      demoProducts.length,
      (index) => ProductCard(product: demoProducts[index]));
  List<ProductCard> filteredProducts = [];

  void filteredSearch(String query) {
    setState(() {
      filteredProducts = allProducts
          .where((item) =>
              item.product.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    filteredProducts = allProducts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        //backgroundColor: const Color(0xFF313133),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            )),
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFF777777))),
          child: TextFormField(
              controller: searchpro,
              onChanged: (value) {
                filteredSearch(value);
              },
              decoration: InputDecoration(
                  // contentPadding: EdgeInsets.symmetric(
                  //     //horizontal: getProportionateScreenWidth(12),
                  //     vertical: getProportionateScreenHeight(0)),
                  hintText: "Search Pizza's",
                  hintStyle:
                      const TextStyle(color: Colors.black54, fontSize: 18),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {
                        searchpro.text = "";
                      },
                      icon: const Icon(Icons.close)))),
        ),
        //actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [DrawerHeader(child: Text("Filter By"))],
        ),
      ),
      body: ResponsiveGridList(
          horizontalGridSpacing: 16,
          verticalGridSpacing: 16,
          horizontalGridMargin: 12,
          verticalGridMargin: 24,
          minItemWidth: 140,
          minItemsPerRow: 2,
          maxItemsPerRow: 2,
          children: List.generate(
              filteredProducts.length, (index) => filteredProducts[index])),
    );
  }
}
