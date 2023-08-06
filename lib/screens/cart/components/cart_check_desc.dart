import 'package:dotted_border/dotted_border.dart';
import 'package:eldepizza/screens/checkout/checkout_screen.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class CartCheckDesc extends StatelessWidget {
  const CartCheckDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: FractionalOffset.bottomCenter,
      width: double.infinity,
      height: getProportionateScreenHeight(260),
      decoration: const BoxDecoration(
          color: Color(0xFF313133),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32))),
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(24)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            child: const Row(
              children: [
                Text('Delivery cost',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Spacer(),
                Text('₱75.00',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            child: const Row(
              children: [
                Text('Subtotal',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Spacer(),
                Text('₱495.00',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(24)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(24)),
            child: const Row(
              children: [
                Text('Total',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Spacer(),
                Text('₱570.00',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DottedBorder(
            dashPattern: const [8, 4],
            strokeWidth: 2,
            color: const Color(0xFF777777),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: getProportionateScreenWidth(246),
              height: getProportionateScreenHeight(44),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF313133),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Add a promo code',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          SizedBox(
            width: getProportionateScreenWidth(246),
            height: getProportionateScreenHeight(44),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF62D00),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, CheckoutScreen.routeName);
              },
              child: const Text(
                'Checkout',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
        ],
      ),
    );
  }
}
