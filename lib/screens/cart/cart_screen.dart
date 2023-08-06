import 'package:eldepizza/models/cart.dart';
import 'package:eldepizza/screens/cart/components/cart_card.dart';
import 'package:eldepizza/screens/cart/components/cart_check_desc.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final carts = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
      ),
      body: carts.items.isEmpty
          ? const Center(
              child: Text("Your cart is empty."),
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(24)),
                  child: Dismissible(
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
                        carts.removeToCart(carts.items[index]);
                      });
                    },
                    key: UniqueKey(),
                    child: CartCard(
                        title: carts.items[index].title,
                        description: carts.items[index].description,
                        rating: carts.items[index].rating,
                        time: carts.items[index].time,
                        image: carts.items[index].favImg),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: carts.items.length),
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenHeight(2)),
        child: const CartCheckDesc(),
      ),
    );
  }
}
