import 'package:eldepizza/components/no_account.dart';
import 'package:eldepizza/components/social_card.dart';
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
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              const Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Sign in with your email and password \nor continue with social media.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const SignForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'android/assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'android/assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'android/assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              const NoAccount(),
            ],
          ),
        ),
      ),
    ));
  }
}
