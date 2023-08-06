//import 'package:eldepizza/components/custom_bottom_nav.dart';
import 'package:eldepizza/constants.dart';
import 'package:eldepizza/models/Product.dart';
import 'package:eldepizza/models/cart.dart';
import 'package:eldepizza/models/favorites.dart';
import 'package:eldepizza/screens/favorite/components/favorite_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//import '../../enum.dart';

class FavoriteScreen extends StatefulWidget {
  static String routeName = "/favorite";
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favs = Provider.of<Favorite>(context);
    final carte = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Favorites',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: favs.favItems.isEmpty
            ? const Center(
                child: Text("Your favorite is empty."),
              )
            : ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(45),
                              horizontal: getProportionateScreenWidth(24)),
                          color: Colors.redAccent,
                          child: const Text(
                            "Remove",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        onDismissed: (direction) {
                          setState(() {
                            favs.removeToCart(favs.favItems[index]);
                          });
                        },
                        child: GestureDetector(
                          onTap: () {
                            carte.addToCart(favs.favItems[index]);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(kAddToCart);
                          },
                          child: FavoriteCard(
                            title: favs.favItems[index].title,
                            description: favs.favItems[index].description,
                            rating: favs.favItems[index].rating,
                            time: favs.favItems[index].time,
                            image: favs.favItems[index].favImg,
                          ),
                        )),
                  );
                },
                itemCount: favs.favItems.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ));
  }
}
