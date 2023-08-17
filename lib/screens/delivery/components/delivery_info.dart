import 'package:eldepizza/constants.dart';
import 'package:eldepizza/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryInfo extends StatefulWidget {
  const DeliveryInfo({super.key});

  @override
  State<DeliveryInfo> createState() => _DeliveryInfoState();
}

class _DeliveryInfoState extends State<DeliveryInfo> {
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
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: const BoxDecoration(
          color: Color(0xFF313133),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Container(
              //decoration: const BoxDecoration(color: Colors.amber),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Image.asset(
                        cartCount.items.first.favImg,
                        height: 120,
                        width: 120,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cartCount.items.first.title,
                              style: kTextStyleMedium),
                          Text(cartCount.items.first.description,
                              style: kTextStyleNormal)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.054,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Size", style: kTextStyleMedium),
                          Text("Preparing Time", style: kTextStyleMedium),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Classic", style: kTextStyleMedium),
                          Text("7-10 mins", style: kTextStyleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
