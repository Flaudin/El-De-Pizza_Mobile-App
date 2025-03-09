import 'package:eldepizza/components/default_button.dart';
import 'package:eldepizza/constants.dart';
//import 'package:eldepizza/constants.dart';
import 'package:eldepizza/screens/Sign_in/sign_in_screen.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            image: AssetImage('android/assets/images/BG.png'),
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
                    Image.asset('android/assets/images/logo.png', width: 92)
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 16.h),
                          width: 260,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                'Quick ',
                                style: TextStyle(
                                    fontSize: header,
                                    color: ktextLight,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Delivery',
                                style: TextStyle(
                                    color: ktextPrimary,
                                    fontSize: header,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'at your doorstep',
                                style: TextStyle(
                                    color: ktextLight,
                                    fontSize: header,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Wrap(children: [
                            Text(
                              'Introducing our new pizza delivery app with lightning-fast delivery service!',
                              style: TextStyle(
                                fontSize: ml,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ]),
                        ),
                        const SizedBox(height: 32.0),
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
