import 'package:eldepizza/constants.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({
    Key? key,
    required this.paymenttype,
    required this.paymentdetails,
  }) : super(key: key);

  final String paymenttype, paymentdetails;

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  bool slcPayment = false;

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
        child: Row(
          children: [
            Checkbox(
                activeColor: kPrimaryColor,
                value: slcPayment,
                onChanged: (newSlcPayment) {
                  setState(() {
                    slcPayment = newSlcPayment!;
                  });
                }),
            SizedBox(width: getProportionateScreenWidth(12)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.paymenttype,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                Text(widget.paymentdetails)
              ],
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
          ],
        ),
      ),
    );
  }
}
