import 'package:eldepizza/components/default_button.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

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
            const Text(
              'Delivery Address',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: getProportionateScreenHeight(12)),
            const AddressCard(
              address: '123 Diliman Liwanag St.',
              addresstype: 'Home Address',
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            const Text('Payment Method',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600)),
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

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
    required this.paymenttype,
    required this.paymentdetails,
  }) : super(key: key);

  final String paymenttype, paymentdetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(100),
      decoration: BoxDecoration(
        color: const Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF777777),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(12),
            vertical: getProportionateScreenHeight(6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: getProportionateScreenWidth(20),
                  height: getProportionateScreenHeight(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFB3B3B3)),
                      borderRadius: BorderRadius.circular(4)),
                  child: Container(
                    width: getProportionateScreenWidth(2),
                    height: getProportionateScreenHeight(2),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF62D00),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(12)),
                Text(
                  paymenttype,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: getProportionateScreenWidth(128)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(32)),
                child: Text(paymentdetails)),
          ],
        ),
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  const AddressCard({
    Key? key,
    required this.addresstype,
    required this.address,
  }) : super(key: key);

  final String addresstype, address;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(100),
      decoration: const BoxDecoration(
        color: Color(0xFFE0E0E0),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF777777),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(12),
            vertical: getProportionateScreenHeight(6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: getProportionateScreenWidth(20),
                  height: getProportionateScreenHeight(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFB3B3B3)),
                      borderRadius: BorderRadius.circular(4)),
                  child: Container(
                    width: getProportionateScreenWidth(2),
                    height: getProportionateScreenHeight(2),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF62D00),
                        borderRadius: BorderRadius.circular(4)),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(12)),
                Text(
                  addresstype,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: getProportionateScreenWidth(128)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(10)),
            Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(32)),
                child: Text(address)),
          ],
        ),
      ),
    );
  }
}
