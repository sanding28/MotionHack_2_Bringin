// ignore_for_file: prefer_const_constructors

import 'package:bringin/pages/service_cart.dart';
import 'package:bringin/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomOurService extends StatelessWidget {

  final String title;
  final String price;

  const CustomOurService({ 
    Key? key,
    required this.title,
    required this.price 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 165,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: keyWhiteColor,
        border: Border.all(
          width: 1
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: bold
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ServiceCart(),
                    ));
                  },
                  child: Container(
                    width: 34,
                    height: 32,
                    decoration: BoxDecoration(
                      color: keyRedColor,
                      borderRadius :BorderRadius.circular(17),
                    ),
                    child: Center(
                      child: Text(
                        '+', 
                        style: whiteTextStyle.copyWith(
                          fontSize: 28,
                          fontWeight: bold
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}