import 'package:dotted_border/dotted_border.dart';
import 'package:eldepizza/constants.dart';
import 'package:eldepizza/models/cart.dart';
import 'package:eldepizza/screens/checkout/checkout_screen.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CartCheckDesc extends StatelessWidget {
  const CartCheckDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double deliveryCharge = 75.00;
    final cartCount = Provider.of<Cart>(context);

    double subtotal() {
      double subTotal = 0.00;
      for (var subtotalList in cartCount.items) {
        subTotal += subtotalList.price;
      }
      return subTotal;
    }

    double total() {
      double totalPrice = 0.00;
      for (var totalList in cartCount.items) {
        totalPrice += totalList.price + deliveryCharge;
      }
      return totalPrice;
    }

    return Container(
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Delivery Cost", style: kTextStyleNormal),
                    const Text("Subtotal", style: kTextStyleNormal),
                    SizedBox(
                      height: getProportionateScreenHeight(16),
                    ),
                    const Text("Total", style: kTextStyleNormal)
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        NumberFormat.simpleCurrency(
                                locale: 'tl', decimalDigits: 2)
                            .format(deliveryCharge),
                        style: kTextStyleNormal),
                    Text(
                        NumberFormat.simpleCurrency(
                                locale: 'tl', decimalDigits: 2)
                            .format(subtotal()),
                        style: kTextStyleNormal),
                    SizedBox(
                      height: getProportionateScreenHeight(16),
                    ),
                    Text(
                        NumberFormat.simpleCurrency(
                                locale: 'tl', decimalDigits: 2)
                            .format(total()),
                        style: kTextStyleNormal)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(16),
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
                const Duration(milliseconds: 120);
                const CircularProgressIndicator.adaptive();
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
