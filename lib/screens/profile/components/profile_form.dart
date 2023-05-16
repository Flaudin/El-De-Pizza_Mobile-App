import 'package:eldepizza/screens/Sign_in/sign_in_screen.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  static String routeName = "/profile_form";

  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(8),
          horizontal: getProportionateScreenWidth(8)),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 221, 146, 8),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(100),
            height: getProportionateScreenHeight(100),
            decoration: const BoxDecoration(
                color: Color(0xFFE0E0E0),
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://discourse.disneyheroesgame.com/uploads/default/optimized/3X/4/0/40374a376b40d67219dde5d53d2643701361e0b9_2_412x500.png"))),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Donkey',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text('Classic Member', style: TextStyle(color: Colors.white)),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
            icon: const Icon(Icons.exit_to_app),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
