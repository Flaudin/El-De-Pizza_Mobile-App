import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFF62D00);
const kPrimaryLightColor = Color(0xFF0A0E21);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF0A0E21), Color(0xFF0A0E21)],
);
const kSecondaryColor = Color(0xFF0A0E21);
const kTextColor = Color(0xFF0A0E21);
const kTextStyleNormal = TextStyle(color: Colors.white, fontSize: 16);
const kTextStyleMedium = TextStyle(color: Colors.white, fontSize: 20);
const kTextStyleMediumBold =
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}

const kAddToCart = SnackBar(
    backgroundColor: kPrimaryColor,
    content: Text(
      "Added to Cart",
      style: TextStyle(color: Colors.white),
    ));

const kAddToFav = SnackBar(
    backgroundColor: kPrimaryColor,
    content: Text(
      "Added to Favorites",
      style: TextStyle(color: Colors.white),
    ));
