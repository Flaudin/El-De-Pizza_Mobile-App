import 'package:eldepizza/components/custom_bottom_nav.dart';
import 'package:eldepizza/screens/checkout/components/body.dart';
import 'package:flutter/material.dart';

import '../../enum.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  static String routeName = '/checkout';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Body(),
        bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.cart));
  }
}
