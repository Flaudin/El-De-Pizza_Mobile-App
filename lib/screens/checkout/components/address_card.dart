import 'package:eldepizza/constants.dart';
import 'package:eldepizza/size_config.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatefulWidget {
  const AddressCard({
    Key? key,
    required this.addresstype,
    required this.address,
  }) : super(key: key);

  final String addresstype, address;

  @override
  State<AddressCard> createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  bool slcAddress = false;
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
        child: Row(
          children: [
            Checkbox(
                activeColor: kPrimaryColor,
                value: slcAddress,
                onChanged: (newSlcAddres) {
                  setState(() {
                    slcAddress = newSlcAddres!;
                  });
                }),
            //SizedBox(width: getProportionateScreenWidth(12)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.addresstype,
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                Text(widget.address)
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
