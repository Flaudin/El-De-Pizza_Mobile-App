// ignore: unused_import
import 'package:eldepizza/constants.dart';
import 'package:eldepizza/screens/home/home_screen.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

import '../enum.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/favorite/favorite_screen.dart';
import '../screens/profile/profile_screen.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: const Color(0xFF313133),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                tooltip: 'Home',
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                icon: Image.asset(
                  "android/assets/icons/Pizza.png",
                  width: getProportionateScreenWidth(24),
                ),
                color: MenuState.home == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              ),
              IconButton(
                tooltip: 'Favorite',
                onPressed: () {
                  Navigator.pushNamed(context, FavoriteScreen.routeName);
                },
                icon: const Icon(Icons.favorite),
                color: MenuState.favorite == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              ),
              IconButton(
                tooltip: 'Cart',
                onPressed: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
                icon: const Icon(Icons.shopping_cart),
                color: MenuState.cart == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              ),
              IconButton(
                tooltip: 'Profile',
                onPressed: () {
                  Navigator.pushNamed(context, ProfileScreen.routeName);
                },
                icon: const Icon(Icons.person),
                color: MenuState.profile == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              ),
            ],
          ),
        ));
  }
}
