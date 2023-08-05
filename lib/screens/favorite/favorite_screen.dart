//import 'package:eldepizza/components/custom_bottom_nav.dart';
import 'package:eldepizza/screens/favorite/components/body.dart';
import 'package:flutter/material.dart';

//import '../../enum.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = "/favorite";
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Favorites',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Body(),
      // bottomNavigationBar:
      //     const CustomBottomNav(selectedMenu: MenuState.favorite),
    );
  }
}
