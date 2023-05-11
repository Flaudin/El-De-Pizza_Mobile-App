import 'package:eldepizza/constants.dart';
import 'package:flutter/material.dart';

import '../enum.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
                icon: const Icon(Icons.local_pizza),
                color: MenuState.home == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                color: MenuState.home == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
                color: MenuState.home == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
                color: MenuState.home == selectedMenu
                    ? Colors.white
                    : inActiveIconColor,
              ),
            ],
          ),
        ));
  }
}
