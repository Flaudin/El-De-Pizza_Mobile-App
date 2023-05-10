import 'package:eldepizza/screens/Sign_in/sign_in_screen.dart';
import 'package:eldepizza/screens/Splash/onboardScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context)  => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};