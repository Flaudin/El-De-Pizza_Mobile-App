import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../home/home_screen.dart';

class CustomBackIcon extends StatelessWidget {
  const CustomBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: getProportionateScreenHeight(280),
      left: getProportionateScreenWidth(17),
      child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
          icon: Image.asset('android/assets/icons/CustomBack.png')),
    );
  }
}
