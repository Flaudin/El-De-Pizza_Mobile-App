import 'package:eldepizza/screens/profile/components/profile_form.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                const Text('Profile',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                const ProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                const Orders(),
                SizedBox(height: getProportionateScreenHeight(30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Orders extends StatelessWidget {
  const Orders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'My Purchases',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenHeight(2)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('android/assets/icons/Unpaid.png'),
                          iconSize: 32,
                        ),
                        const Text('Unpaid')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('android/assets/icons/ship.png'),
                          iconSize: 32,
                        ),
                        const Text('Shipped')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('android/assets/icons/Deliver.png'),
                          iconSize: 32,
                        ),
                        const Text('Delivery')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Image.asset('android/assets/icons/Rate.png'),
                          onPressed: () {},
                          iconSize: 32,
                        ),
                        const Text('To Rate')
                      ],
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
