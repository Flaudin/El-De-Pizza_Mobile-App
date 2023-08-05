import 'package:eldepizza/components/custom_bottom_nav.dart';
import 'package:eldepizza/constants.dart';
import 'package:eldepizza/screens/cart/cart_screen.dart';
import 'package:eldepizza/screens/favorite/favorite_screen.dart';
import 'package:eldepizza/screens/home/components/body.dart';
import 'package:eldepizza/screens/home/components/icon_counter.dart';
import 'package:eldepizza/screens/home/components/search_field.dart';
import 'package:eldepizza/screens/home/components/search_suggest.dart';
import 'package:eldepizza/screens/profile/profile_screen.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import '../../enum.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/homepage";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: _pages.elementAt(_currentIndex)),
      bottomNavigationBar:
          //const CustomBottomNav(selectedMenu: MenuState.home),
          ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF313133),
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: const Color(0xFFB6B6B6),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_pizza_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline), label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: badges.Badge(
                      badgeContent: Text(
                        "3",
                        style: TextStyle(color: Colors.white),
                      ),
                      child: Icon(Icons.shopping_cart_outlined)),
                  label: 'Order'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: 'Account')
            ]),
      ),
    );
  }
}

const List<Widget> _pages = <Widget>[
  Body(),
  FavoriteScreen(),
  CartScreen(),
  ProfileScreen()
];
