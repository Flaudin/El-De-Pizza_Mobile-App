import 'package:eldepizza/constants.dart';
import 'package:eldepizza/screens/Sign_in/components/signform.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: const <Widget>[
                Text(
                    'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    'Sign in with your email and password \nor continue with social media.',
                  textAlign: TextAlign.center,
                ),
                SignForm(),
              ],
            ),
          ),
        )
    );
  }
}


