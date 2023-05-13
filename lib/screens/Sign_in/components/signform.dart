import 'package:eldepizza/components/custom_button_icons.dart';
import 'package:eldepizza/components/default_button.dart';
import 'package:eldepizza/components/form_error.dart';
import 'package:eldepizza/screens/forgot_password/forgot_password.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:eldepizza/constants.dart';
import '../../../helpie/keyboard.dart';
import '../../../size_config.dart';
import '../../home/home_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final formKey = GlobalKey<FormState>();
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  String? email;
  String? pass;
  bool? remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          buildEmailFormMethod(),
          SizedBox(height: getProportionateScreenWidth(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenWidth(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              const Text('Remember me'),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgortPasswordScreen.routeName),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (formKey.currentState != null &&
                  formKey.currentState!.validate()) {
                formKey.currentState!.save();
                KeyboardUtil.hideKeyboard(context);
                //signInWithEmailAndPassword(email!, pass!);
                Navigator.pushNamed(context, HomeScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      onSaved: (newValue) => pass = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter your password.',
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            const CustomSurffixIcon(svgIcon: "android/assets/icons/Lock.svg"),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }

  TextFormField buildEmailFormMethod() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter your email.',
        labelText: 'Email',
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            const CustomSurffixIcon(svgIcon: "android/assets/icons/Mail.svg"),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }

  // Future<void> signInWithEmailAndPassword( String email, String password) async {
  //   try{
  //     UserCredential userCredential = await _auth.signInWithEmailAndPassword(
  //       email: email,
  //       password:password,
  //     );

  //     User? user = userCredential.user;
  //     if (user !=null){
  //       String? displayName = user.displayName;
  //       String? email = user.email;
  //       String? photoURL = user.photoURL;
  //     }

  //     Navigator.pushNamed(context, HomeScreen.routeName);
  //   }
  //   catch(e){
  //     print('Sign-in error: $e');
  //     if (e is FirebaseAuthException) {
  //       FirebaseAuthException authException = e;
  //       print('Sign-in error: ${authException.code} - ${authException.message}');

  //       // Display appropriate error messages to the user
  //       if (authException.code == 'user-not-found') {
  //         addError(error: 'User not found.');
  //       } else if (authException.code == 'wrong-password') {
  //         addError(error: 'Wrong password.');
  //       } else {
  //         addError(error: 'Sign-in failed. Please try again later.');
  //       }
  //     } else {
  //       print('Unknown sign-in error: $e');
  //       addError(error: 'An unknown error occurred. Please try again later.');
  //     }
  //     }
  //   }
}
