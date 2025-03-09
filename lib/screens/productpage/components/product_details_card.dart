import 'package:eldepizza/constants.dart';
import 'package:eldepizza/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:intl/intl.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 160.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
        child: GlassContainer(
          width: 326.w,
          //height: MediaQuery.of(context).size.height * 0.25,
          color: const Color(0xFF777777).withOpacity(0.4),
          blur: 10,
          borderRadius: BorderRadius.circular(8.r),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(
                        fontSize: xl,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'WorkSans',
                        color: ktextLight,
                      ),
                    ),
                    Text(
                      "Pizza",
                      style: TextStyle(
                        fontSize: ml,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'WorkSans',
                        color: ktextLight,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(0xFFEEC306),
                          size: 18,
                        ),
                        Text(
                          product.rating.toString(),
                          style: TextStyle(
                              fontFamily: 'WorkSans',
                              fontSize: sm,
                              color: ktextLight),
                        ),
                        SizedBox(width: 16.w),
                        Text(product.time,
                            style: TextStyle(
                                fontFamily: 'WorkSans',
                                fontSize: sm,
                                color: ktextLight)),
                      ],
                    ),
                    //SizedBox(height: getProportionateScreenHeight(8)),
                    Text(
                      product.description,
                      style: TextStyle(
                          fontFamily: 'WorkSans',
                          color: ktextLight,
                          fontSize: sm),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        SizedBox(
                          width: 220.w,
                        ),
                        Text(
                          NumberFormat.simpleCurrency(
                                  locale: 'tl', decimalDigits: 2)
                              .format(product.price),
                          style: TextStyle(
                              fontSize: xl,
                              fontWeight: FontWeight.w900,
                              color: ktextLight),
                        )
                      ],
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
