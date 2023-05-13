import 'package:eldepizza/screens/Sign_in/sign_in_screen.dart';
import 'package:eldepizza/screens/Sign_up/sign_up_screen.dart';
import 'package:eldepizza/screens/Splash/onboardScreen.dart';
import 'package:eldepizza/screens/cart/cart_screen.dart';
import 'package:eldepizza/screens/favorite/favorite_screen.dart';
import 'package:eldepizza/screens/forgot_password/forgot_password.dart';
import 'package:eldepizza/screens/home/home_screen.dart';
import 'package:eldepizza/screens/productpage/product_page_screen.dart';
import 'package:eldepizza/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgortPasswordScreen.routeName: (context) => const ForgortPasswordScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  FavoriteScreen.routeName: (context) => const FavoriteScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProductPageScreen.routeName: (context) => const ProductPageScreen(),
};
