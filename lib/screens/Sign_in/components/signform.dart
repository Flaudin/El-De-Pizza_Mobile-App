import 'package:flutter/material.dart';
import 'package:eldepizza/constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  final String eemail;
  final String pass;
  const SignForm({Key? key, required this.eemail, required this.pass, }) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Enter your email.',
              labelText: 'Email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(horizontal: 42,vertical: 20),
              suffixIcon: Padding(
                padding: EdgeInsets.fromLTRB(
                    0,
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20)
                ),
                child: const Icon(Icons.mail_outlined),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
              focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Enter your password.',
              labelText: 'Password',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(horizontal: 42,vertical: 20),
              suffixIcon: Padding(
                padding: EdgeInsets.fromLTRB(
                    0,
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20),
                    getProportionateScreenWidth(20)
                ),
                child: const Icon(Icons.mail_outlined),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
              focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}