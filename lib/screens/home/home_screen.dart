import 'package:eldepizza/components/custom_bottom_nav.dart';
import 'package:eldepizza/screens/home/components/body.dart';
import 'package:flutter/material.dart';

import '../../enum.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/homepage";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.home),
    );
  }
}
