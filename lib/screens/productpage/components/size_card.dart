import 'package:eldepizza/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../size_config.dart';

class SizeCard extends StatelessWidget {
  const SizeCard({
    Key? key,
    required this.image,
    required this.size,
    required this.onselect,
    required this.isSelect,
  }) : super(key: key);

  final String image, size;
  final Function onselect;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onselect as void Function()?,
      child: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
            color: isSelect ? kPrimaryColor : const Color(0xFFE0E0E0),
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
                color: isSelect ? kPrimaryColor : Colors.transparent)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenWidth(3.5)),
              child: Image.asset(image),
            ),
            Text(
              size,
              style: TextStyle(
                  fontSize: sm, color: isSelect ? Colors.white : kTextColor),
            )
          ],
        ),
      ),
    );
  }
}
