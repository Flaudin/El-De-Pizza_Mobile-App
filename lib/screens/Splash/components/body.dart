import 'package:eldepizza/components/default_button.dart';
import 'package:eldepizza/constants.dart';
import 'package:eldepizza/screens/Sign_in/sign_in_screen.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('android/assets/images/onScreenBg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              const Spacer(),
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Image.asset('android/assets/images/logo.png', width: 84)
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: Container(
                    width: double.infinity,
                    alignment: FractionalOffset.bottomCenter,
                    decoration: BoxDecoration(
                      color: const Color(0xFF313133),
                      border: Border.all(
                        color: const Color(0xFF313133),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4.0),
                          width: 260,
                          child: Align(
                            alignment: Alignment.center,
                            child: RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    children: [
                                  TextSpan(text: 'Quick'),
                                  TextSpan(text: '\u00A0'),
                                  TextSpan(
                                    text: 'Delivery',
                                    style: TextStyle(
                                      color: Color(0xFFF62D00),
                                    ),
                                  ),
                                  TextSpan(text: '\u00A0'),
                                  TextSpan(text: 'at'),
                                  TextSpan(text: '\u00A0'),
                                  TextSpan(text: 'Your'),
                                  TextSpan(text: '\u00A0'),
                                  TextSpan(text: 'Doorstep'),
                                ])),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        const SizedBox(
                          width: 390,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Introducing our new pizza delivery app with lightning-fast delivery service!',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(height: 46.0),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(24)),
                          child: DefaultButton(
                            text: 'Get Started',
                            press: () {
                              Navigator.pushNamed(
                                  context, SignInScreen.routeName);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
