import 'package:eldepizza/components/default_button.dart';
import 'package:eldepizza/screens/checkout/components/address_card.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

import 'payment_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(18)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset('android/assets/icons/CustomBack.png'),
                  iconSize: 24,
                ),
                SizedBox(width: getProportionateScreenWidth(12)),
                const Text('Checkout',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.w600)),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            Row(
              children: [
                const Text(
                  'Delivery Address',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: getProportionateScreenHeight(32),
                    ))
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(12)),
            const AddressCard(
              address: '123 Diliman Liwanag St.',
              addresstype: 'Home Address',
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            Row(
              children: [
                const Text('Payment Method',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600)),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: getProportionateScreenHeight(32),
                    ))
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(12)),
            const PaymentCard(
                paymentdetails: 'XXX-XXXXXXXXX3214',
                paymenttype: 'Bank Transfer'),
            const Spacer(),
            DefaultButton(
              text: 'Place Order',
              press: () {},
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
          ],
        ),
      ),
    );
  }
}
